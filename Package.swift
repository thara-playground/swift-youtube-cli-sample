// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YouTubeCli",
    products: [],
    dependencies: [
        .package(name: "Auth", url: "https://github.com/googleapis/google-auth-library-swift.git", from: "0.4.2"),
        .package(url: "https://github.com/googleapis/google-api-swift-client.git", .branch("master")),
        .package(url: "https://github.com/kylef/Commander.git", .upToNextMinor(from: "0.8.0")),
    ],
    targets: [
        .target(name: "YouTubeCli",
                dependencies: [
                    .product(name: "OAuth2", package: "Auth"),
                    .product(name: "GoogleAPIRuntime", package: "google-api-swift-client"),
                    "Commander"
                ],
                path: "Sources"),
    ]
)
