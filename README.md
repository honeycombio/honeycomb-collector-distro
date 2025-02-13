# Honeycomb Collector Distro

Honeycomb's OpenTelemetry collector distribution built with [OCB](https://github.com/open-telemetry/opentelemetry-collector/tree/main/cmd/builder).

<!-- OSS metadata badge - rename repo link and set status in OSSMETADATA -->
<!-- [![OSS Lifecycle](https://img.shields.io/osslifecycle/honeycombio/{repo-name})](https://github.com/honeycombio/home/blob/main/honeycomb-oss-lifecycle-and-practices.md) -->

## Components

| Type | Name | Version | Link |
|----------------|----------------|---------|------|
| Exporter       | debugexporter  | v0.115.0 | [debugexporter](https://pkg.go.dev/go.opentelemetry.io/collector/exporter/debugexporter@v0.115.0) |
| Exporter       | otlpexporter   | v0.115.0 | [otlpexporter](https://pkg.go.dev/go.opentelemetry.io/collector/exporter/otlpexporter@v0.115.0) |
| Exporter       | nopexporter    | v0.115.0 | [nopexporter](https://pkg.go.dev/go.opentelemetry.io/collector/exporter/nopexporter@v0.115.0) |
| Exporter       | otlphttpexporter | v0.115.0 | [otlphttpexporter](https://pkg.go.dev/go.opentelemetry.io/collector/exporter/otlphttpexporter@v0.115.0) |
| Exporter       | fileexporter   | v0.115.0 | [fileexporter](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/exporter/fileexporter@v0.115.0) |
| Processor      | batchprocessor | v0.115.0 | [batchprocessor](https://pkg.go.dev/go.opentelemetry.io/collector/processor/batchprocessor@v0.115.0) |
| Processor      | memorylimiterprocessor | v0.115.0 | [memorylimiterprocessor](https://pkg.go.dev/go.opentelemetry.io/collector/processor/memorylimiterprocessor@v0.115.0) |
| Processor      | filterprocessor | v0.115.0 | [filterprocessor](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/processor/filterprocessor@v0.115.0) |
| Processor      | attributesprocessor | v0.115.0 | [attributesprocessor](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/processor/attributesprocessor@v0.115.0) |
| Processor      | transformprocessor | v0.115.0 | [transformprocessor](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/processor/transformprocessor@v0.115.0) |
| Processor      | symbolicatorprocessor | v0.0.2-dev | [symbolicatorprocessor](https://pkg.go.dev/github.com/honeycombio/opentelemetry-collector-symbolicator/symbolicatorprocessor@v0.0.2-dev) |
| Receiver       | otlpreceiver   | v0.115.0 | [otlpreceiver](https://pkg.go.dev/go.opentelemetry.io/collector/receiver/otlpreceiver@v0.115.0) |
| Receiver       | nopreceiver    | v0.115.0 | [nopreceiver](https://pkg.go.dev/go.opentelemetry.io/collector/receiver/nopreceiver@v0.115.0) |
| Receiver       | filelogreceiver | v0.115.0 | [filelogreceiver](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/receiver/filelogreceiver@v0.115.0) |
| Receiver       | jaegerreceiver | v0.115.0 | [jaegerreceiver](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/receiver/jaegerreceiver@v0.115.0) |
| Receiver       | hostmetricsreceiver | v0.115.0 | [hostmetricsreceiver](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/receiver/hostmetricsreceiver@v0.115.0) |
| Receiver       | kafkareceiver  | v0.115.0 | [kafkareceiver](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/receiver/kafkareceiver@v0.115.0) |
| Receiver       | prometheusreceiver | v0.115.0 | [prometheusreceiver](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/receiver/prometheusreceiver@v0.115.0) |
| Receiver       | kubeletstatsreceiver | v0.115.0 | [kubeletstatsreceiver](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/receiver/kubeletstatsreceiver@v0.115.0) |
| Receiver       | zipkinreceiver | v0.115.0 | [zipkinreceiver](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/receiver/zipkinreceiver@v0.115.0) |
| Provider       | envprovider    | v1.17.0 | [envprovider](https://pkg.go.dev/go.opentelemetry.io/collector/confmap/provider/envprovider@v1.17.0) |
| Provider       | fileprovider   | v1.17.0 | [fileprovider](https://pkg.go.dev/go.opentelemetry.io/collector/confmap/provider/fileprovider@v1.17.0) |
| Provider       | httpprovider   | v1.17.0 | [httpprovider](https://pkg.go.dev/go.opentelemetry.io/collector/confmap/provider/httpprovider@v1.17.0) |
| Provider       | httpsprovider  | v1.17.0 | [httpsprovider](https://pkg.go.dev/go.opentelemetry.io/collector/confmap/provider/httpsprovider@v1.17.0) |
| Provider       | yamlprovider   | v1.17.0 | [yamlprovider](https://pkg.go.dev/go.opentelemetry.io/collector/confmap/provider/yamlprovider@v1.17.0) |
| Extension      | zpagesextension | v0.115.0 | [zpagesextension](https://pkg.go.dev/go.opentelemetry.io/collector/extension/zpagesextension@v0.115.0) |
| Extension      | healthcheckextension | v0.115.0 | [healthcheckextension](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/extension/healthcheckextension@v0.115.0) |
| Extension      | pprofextension | v0.115.0 | [pprofextension](https://pkg.go.dev/github.com/open-telemetry/opentelemetry-collector-contrib/extension/pprofextension@v0.115.0) |