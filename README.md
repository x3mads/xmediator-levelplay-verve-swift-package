# XMediatorLevelPlayVerveAdapterCompatibility

Swift Package Manager package, published by X3M, that lets XMediator
integrations use the LevelPlay `VerveAdapter` adapter together with
the Google Mobile Ads mediation adapter for the same network.

## Why this package exists

The official LevelPlay adapter package (<https://github.com/ironsource-mobile/LevelPlay-Verve-Adapter-Swift-Package.git>) and the Google
mediation adapter package both declare a target named `VerveAdapter`,
so SwiftPM cannot build a project that includes both. This package depends on
the official LevelPlay package and exposes it under a different product name,
`LevelPlayVerveAdapter`, renaming the conflicting module so both adapters can
coexist.

## Usage

Add this repository as a package dependency and select the
`LevelPlayVerveAdapter` product instead of LevelPlay's `VerveAdapter`.
Versions match the LevelPlay adapter versions one-to-one: version
`5.7.0` of this package uses LevelPlay adapter `5.7.0`.

## License

Apache License 2.0 (see `LICENSE`).
