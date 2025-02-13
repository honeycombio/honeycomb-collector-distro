.PHONY: builder
builder:
	go install go.opentelemetry.io/collector/cmd/builder@v0.115.0

.PHONY: clean
clean:
	rm -rf bin

.PHONY: build
build: builder
	builder --config builder-config.yaml

.PHONY: build-docker
build-docker:
	docker buildx build . -t honeycomb-otelcol

.PHONY: run
run: build
	./bin/honeycomb-otelcol --config config.yaml

