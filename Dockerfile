# Pinned to the build platform, never the target: the Go toolchain runs
# natively and cross-compiles instead of being emulated under QEMU, which made
# the arm64 half of a multi-arch build take most of a 44-minute release.
# buildx sets BUILDARCH, TARGETOS, and TARGETARCH; the Makefile scopes them to
# the builder call (see the comment there).
#
# Pinned to Go 1.27.3: Go 1.27.4 rejects symbolic-go v0.0.8's
# `-Wl,-rpath <path>` cgo flag. Unpin once the symbolicator processors ship
# a symbolic-go with honeycombio/symbolic-go#33.
FROM --platform=$BUILDPLATFORM golang:1.27.3 AS build

ARG BUILDARCH
ARG TARGETOS
ARG TARGETARCH

# The symbolicator processors use cgo to link libsymbolic_cabi, a prebuilt
# library in github.com/honeycombio/symbolic-go with one copy per architecture.
# Linking it for another architecture needs that architecture's C toolchain.
RUN if [ "$TARGETARCH" != "$BUILDARCH" ]; then \
      case "$TARGETARCH" in \
        amd64) pkg=gcc-x86-64-linux-gnu ;; \
        arm64) pkg=gcc-aarch64-linux-gnu ;; \
        *) echo "unsupported TARGETARCH: $TARGETARCH" >&2; exit 1 ;; \
      esac; \
      apt-get update && \
      apt-get install -y --no-install-recommends "$pkg" "libc6-dev-$TARGETARCH-cross" && \
      rm -rf /var/lib/apt/lists/*; \
    fi

WORKDIR /go/src

ADD ./builder-config.yaml ./
ADD ./Makefile ./
ADD ./config.yaml ./

RUN if [ "$TARGETARCH" = "$BUILDARCH" ]; then cc=gcc; \
    elif [ "$TARGETARCH" = amd64 ]; then cc=x86_64-linux-gnu-gcc; \
    else cc=aarch64-linux-gnu-gcc; fi; \
    make build TARGETOS=$TARGETOS TARGETARCH=$TARGETARCH TARGETCC=$cc

FROM gcr.io/distroless/cc

USER nonroot
VOLUME /tmp

COPY --from=build --chmod=755 /go/src/bin/honeycomb-otelcol /honeycomb-otelcol
COPY --from=build  /go/src/config.yaml /
# libsymbolic_cabi is loaded at run time from its path in the module cache
# (an rpath set by symbolic-go), so it ships at the same path.
COPY --from=build /go/pkg/mod/github.com/honeycombio/ /go/pkg/mod/github.com/honeycombio/

ENTRYPOINT [ "/honeycomb-otelcol" ]
CMD [ "--config", "config.yaml" ]
