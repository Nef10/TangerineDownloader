// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TangerineDownloader",
    platforms: [.iOS(.v14), .macOS(.v11)],
    products: [
        .library(
            name: "TangerineDownloader",
            targets: ["TangerineDownloader"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/Nef10/SwiftScraper.git",
            .exact("0.5.1")
        )
    ],
    targets: [
        .target(
            name: "TangerineDownloader",
            dependencies: [
                "SwiftScraper",
            ],
            resources: [
                .process("Resources/TangerineDownload.js")
            ]),
        .testTarget(
            name: "TangerineDownloaderTests",
            dependencies: ["TangerineDownloader"]),
    ]
)
