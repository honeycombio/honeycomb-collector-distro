FROM golang:1.24 AS build

WORKDIR /go/src

ADD ./builder-config.yaml ./
ADD ./Makefile ./
ADD ./config.yaml ./

RUN make build

FROM gcr.io/distroless/cc

USER nonroot

COPY --from=build --chmod=755 /go/src/bin/honeycomb-otelcol /honeycomb-otelcol
COPY --from=build  /go/src/config.yaml /
COPY --from=build /go/pkg/mod/github.com/honeycombio/ /go/pkg/mod/github.com/honeycombio/

ENTRYPOINT [ "/honeycomb-otelcol" ]
CMD [ "--config", "config.yaml" ]
