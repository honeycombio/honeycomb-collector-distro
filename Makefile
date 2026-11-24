# Target platform and C compiler for the collector binary. They default to the
# host, so a plain `make build` is unchanged. The Dockerfile passes buildx's
# TARGETOS/TARGETARCH and a cross compiler, so the image cross-compiles instead
# of running the toolchain under QEMU. These deliberately are NOT named
# GOOS/GOARCH/CC: make exports command-line variables into every recipe, which
# would make the `go install` below try to cross-compile the builder tool
# itself and fail.
TARGETOS ?= $(shell go env GOOS)
TARGETARCH ?= $(shell go env GOARCH)
TARGETCC ?= $(shell go env CC)

.PHONY: builder
# Renovate updates the builder version with the collector components (see renovate.json5).
builder:
	go install go.opentelemetry.io/collector/cmd/builder@v0.165.0

.PHONY: clean
clean:
	rm -rf bin

.PHONY: build
build: builder
	GOOS=$(TARGETOS) GOARCH=$(TARGETARCH) CC=$(TARGETCC) builder --config builder-config.yaml

.PHONY: build-docker
build-docker:
	docker buildx build --platform linux/amd64,linux/arm64 --progress=plain . -t honeycomb-otelcol

.PHONY: run
run: build
	./bin/honeycomb-otelcol --config config.yaml
