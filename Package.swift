// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "XMediatorLevelPlayVerveAdapterCompatibility",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(name: "LevelPlayVerveAdapter", targets: ["LevelPlayVerveAdapterWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-Verve-Adapter-Swift-Package.git", exact: "5.6.0"),
    ],
    targets: [
        .target(
            name: "LevelPlayVerveAdapterWrapper",
            dependencies: [
                .product(
                    name: "VerveAdapter",
                    package: "LevelPlay-Verve-Adapter-Swift-Package",
                    moduleAliases: ["VerveAdapter": "LevelPlayVerveAdapterTarget"]
                ),
            ]
        ),
    ]
)
