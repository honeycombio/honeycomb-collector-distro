.PHONY: builder
builder:
	go install go.opentelemetry.io/collector/cmd/builder@v0.115.0

.PHONY: clean
clean:
	rm -rf honeycomb-otelcol

.PHONY: build
build: builder
	builder --config builder-config.yaml

.PHONY: build-docker
build-docker:
	docker buildx build . -t honeycomb-otelcol

.PHONY: run
run: build
	./honeycomb-otelcol/honeycomb-otelcol --config config.yaml

