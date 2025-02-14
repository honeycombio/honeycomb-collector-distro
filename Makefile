.PHONY: builder
builder:
	go install go.opentelemetry.io/collector/cmd/builder@v0.119.0

.PHONY: clean
clean:
	rm -rf bin

.PHONY: build
build: builder
	builder --config builder-config.yaml

.PHONY: build-docker
build-docker:
	docker buildx build --platform linux/arm64 . -t honeycomb-otelcol

.PHONY: run
run: build
	./bin/honeycomb-otelcol --config config.yaml

