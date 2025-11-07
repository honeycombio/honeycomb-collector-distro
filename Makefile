.PHONY: builder
builder:
	go install go.opentelemetry.io/collector/cmd/builder@v0.139.0

.PHONY: clean
clean:
	rm -rf bin

.PHONY: build
build: builder
	builder --config builder-config.yaml

.PHONY: build-docker
build-docker:
	docker buildx build --platform linux/amd64,linux/arm64 --progress=plain . -t honeycomb-otelcol

.PHONY: run
run: build
	./bin/honeycomb-otelcol --config config.yaml
