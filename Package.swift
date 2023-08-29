// swift-tools-version:5.5

import PackageDescription

let package = Package(
        name: "SoulSwapCurrencyKit",
        platforms: [
            .iOS(.v13),
        ],
        products: [
            .library(
                    name: "SoulSwapCurrencyKit",
                    targets: ["SoulSwapCurrencyKit"]),
        ],
        dependencies: [
            .package(url: "https://github.com/SoulSwapFinance/SoulSwapStorageKit.git", .upToNextMajor(from: "1.0.0")),
        ],
        targets: [
            .target(
                    name: "SoulSwapCurrencyKit",
                    dependencies: [
                        .product(name: "SoulSwapStorageKit", package: "SoulSwapStorageKit"),
                    ]
            )
        ]
)
