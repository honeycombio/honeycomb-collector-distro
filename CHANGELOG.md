# Honeycomb OpenTelemetry Collector Distro changelog

## Unreleased

## v0.0.23 [beta] - 2025/11/19

### 🛠️ Maintenance

- maint: bump symbolicator processors to the latest versions (#62) | @jairo-mendoza

## v0.0.22 [beta] - 2025/11/10

### 🛠️ Maintenance

- maint: bump collector versions to v0.145.0/v0.139.0 (#60) | @TylerHelmuth

## v0.0.21 [beta] - 2025/10/23

### 🛠️ Maintenance

- maint: Update symbolicator components to latest versions (#58) | @beekhc

## v0.0.20 [beta] - 2025/09/29

### 🛠️ Maintenance

- maint: Update collector components to v1.42.0 / v0.136.0 (#56) | @MikeGoldsmith

## v0.0.19 [beta] - 2025/09/03

### 🛠️ Maintenance

- fix(ci): add AWS OIDC authentication before ECR login (#55) | @lizthegrey

## v0.0.18 [beta] - 2025/09/03

### ✨ Features

- feat(receivers): add awsfirehose receiver and metricstransformprocessor to enable Kinesis stream processing (#52) | @lizthegrey
- feat: add public ECR registry distribution for improved availability (#51) | @lizthegrey

### 🛠️ Maintenance

- maint: update collector v0.134.0/v1.40.0 (#54) | @lizthegrey

## v0.0.17 [beta] - 2025/08/21

- chore: Add a `tmp` volume to the docker file so that we can cache the proguard mapper since it expects to be passed a cached file.

## v0.0.16 [beta] - 2025/08/20

- maint: update proguardprocessor to v0.0.4 (#47) | @jairo-mendoza

## v0.0.15 [beta] - 2025/07/24

### 🚨 Breaking Changes

- maint: update sourcemapprocessor/v0.0.10 dsymprocessor/v0.0.6 proguardprocessor/v0.0.3 (#45) | @mustafahaddara
  - Processors `symbolicator` and `dsymprocessor` renamed to `source_map_symbolicator` and `dsym_symbolicator` respectively
  - Internal `symbolicatorprocessor` plugin renamed to `sourcemapprocessor`

## v0.0.14 [beta] - 2025/07/02

### ✨ Features

- maint: update symbolicatorprocessor/v0.0.9 dsymprocessor/v0.0.5 proguardprocessor/v0.0.2 (#43) | @martin308

### 🛠️ Maintenance

- maint: collector v0.129.0/v1.35.0 (#42)

## v0.0.13 [beta] - 2025/06/27

### ✨ Features

- feat: update symbolicator and dsymprocessor versions so error messages are included (#41) | @mustafahaddara

## v0.0.12 [beta] - 2025/06/26

### 🛠️ Maintenance

- maint: update dsymprocessor version (#40) | @mustafahaddara

## v0.0.11 [beta] - 2025/06/25

### 🛠️ Maintenance

- maint: update dsymprocessor version (#39) | @mustafahaddara

## v0.0.10 [beta] - 2025/06/16

### ✨ Features

- feat: add dSYM processor (#37) | @mustafahaddara

### 🛠️ Maintenance

- maint: Update collector and collector contrib dependencies to latest version (#35) | @martin308

## v0.0.9 [beta] - 2025/04/29

### ✨ Features

- feat: webhookeventreceiver (#33) | @martin308

### 🛠️ Maintenance

- maint: Update base and contrib versions (#32) | @martin308

## v0.0.8 [beta] - 2025/04/18

### ✨ Features

- feat: Add headerssetterextension (#30) | @martin308

## v0.0.7 [beta] - 2025/04/14

### ✨ Features

- feat: Add k8sclusterreceiver (#24) | @martin308
- feat: Add k8sobjectsreceiver (#23) | @martin308
- feat: Add S3 Provider (#25) | @martin308
- feat: Add bearer token auth extension (#26) | @martin308

### 🛠️ Maintenance

- maint: Update v0.122.1/v1.28.1 (#20) | @martin308
- maint: Update v0.123.0/v1.29.0 versions (#28) | @martin308

### 📚 Docs

- docs: Add new receivers to readme (#27) | @martin308

## v0.0.6 [beta] - 2025/03/18

### ✨ Features

- feat: Add resource detection processor (#17) | @mterhar

### 🛠️ Maintenance

- feat: Update go and collector versions (#16) | @martin308

## v0.0.5 [beta] - 2025/02/28

### ✨ Features

- feat: Update symbolicator processor v0.0.6 (#14) | @martin308

## v0.0.4 [beta] - 2025/02/21

### ✨ Features

- feat: Update symbolicator processor (#10) | @martin308

## v0.0.3 [beta] - 2025/02/21

### 🛠️ Maintenance

- feat: Include attestation flags (#6) | @martin308

## v0.0.1 [beta] - 2025/02/19

### ✨ Features

- feat(ci): Publish distro to Dockerhub (#2) | @pkanal
- Use nonroot user (#3) | @martin308
- feat: Honeycomb OTel collector distro built with OCB (#1) | @pkanal
