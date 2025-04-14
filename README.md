# Honeycomb Collector Distro

Honeycomb's OpenTelemetry collector distribution built with [OCB](https://github.com/open-telemetry/opentelemetry-collector/tree/main/cmd/builder).

## Run the collector

```sh
docker pull honeycombio/honeycomb-opentelemetry-collector:latest
```

```sh
docker run \
  -p 14268:14268 \
  -p 4317-4318:4317-4318 \
  honeycombio/honeycomb-opentelemetry-collector:latest
```

## Components

| Type | Name | Link |
|------|------|------|
| Exporter       | debugexporter  | [debugexporter](https://pkg.go.dev/go.opentelemetry.io/collector/exporter/debugexporter) |
| Exporter       | otlpexporter   | [otlpexporter](https://pkg.go.dev/go.opentelemetry.io/collector/exporter/otlpexporter) |
| Exporter       | nopexporter    | [nopexporter](https://pkg.go.dev/go.opentelemetry.io/collector/exporter/nopexporter) |
| Exporter       | otlphttpexporter | [otlphttpexporter](https://pkg.go.dev/go.opentelemetry.io/collector/exporter/otlphttpexporter) |
| Exporter       | fileexporter   | [fileexporter](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/exporter/fileexporter) |
| Processor      | batchprocessor | [batchprocessor](https://pkg.go.dev/go.opentelemetry.io/collector/processor/batchprocessor) |
| Processor      | memorylimiterprocessor | [memorylimiterprocessor](https://pkg.go.dev/go.opentelemetry.io/collector/processor/memorylimiterprocessor) |
| Processor      | filterprocessor | [filterprocessor](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/processor/filterprocessor) |
| Processor      | attributesprocessor | [attributesprocessor](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/processor/attributesprocessor) |
| Processor      | transformprocessor | [transformprocessor](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/processor/transformprocessor) |
| Processor      | symbolicatorprocessor | [symbolicatorprocessor](https://pkg.go.dev/github.com/honeycombio/opentelemetry-collector-symbolicator/symbolicatorprocessor) |
| Processor      | resourcedetectionprocessor | [resourcedetectionprocessor](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/processor/resourcedetectionprocessor) |
| Receiver       | otlpreceiver   | [otlpreceiver](https://pkg.go.dev/go.opentelemetry.io/collector/receiver/otlpreceiver) |
| Receiver       | nopreceiver    | [nopreceiver](https://pkg.go.dev/go.opentelemetry.io/collector/receiver/nopreceiver) |
| Receiver       | filelogreceiver | [filelogreceiver](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/receiver/filelogreceiver) |
| Receiver       | jaegerreceiver | [jaegerreceiver](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/receiver/jaegerreceiver) |
| Receiver       | hostmetricsreceiver | [hostmetricsreceiver](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/receiver/hostmetricsreceiver) |
| Receiver       | kafkareceiver  | [kafkareceiver](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/receiver/kafkareceiver) |
| Receiver       | prometheusreceiver | [prometheusreceiver](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/receiver/prometheusreceiver) |
| Receiver       | kubeletstatsreceiver | [kubeletstatsreceiver](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/receiver/kubeletstatsreceiver) |
| Receiver       | zipkinreceiver | [zipkinreceiver](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/receiver/zipkinreceiver) |
| Provider       | envprovider    | [envprovider](https://pkg.go.dev/go.opentelemetry.io/collector/confmap/provider/envprovider) |
| Provider       | fileprovider   | [fileprovider](https://pkg.go.dev/go.opentelemetry.io/collector/confmap/provider/fileprovider) |
| Provider       | httpprovider   | [httpprovider](https://pkg.go.dev/go.opentelemetry.io/collector/confmap/provider/httpprovider) |
| Provider       | httpsprovider  | [httpsprovider](https://pkg.go.dev/go.opentelemetry.io/collector/confmap/provider/httpsprovider) |
| Provider       | yamlprovider   | [yamlprovider](https://pkg.go.dev/go.opentelemetry.io/collector/confmap/provider/yamlprovider) |
| Extension      | zpagesextension | [zpagesextension](https://pkg.go.dev/go.opentelemetry.io/collector/extension/zpagesextension) |
| Extension      | bearertokenauthextension | [bearertokenauthextension](github.com/open-telemetry/opentelemetry-collector-contrib/extension/bearertokenauthextension) |
| Extension      | healthcheckextension | [healthcheckextension](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/extension/healthcheckextension) |
| Extension      | pprofextension | [pprofextension](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/extension/pprofextension) |
