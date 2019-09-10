// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Prorsum",
    products: [
        .executable(name: "prorsum-performance", targets: ["Performance"]),
        .library(name: "Prorsum", targets: ["Prorsum"])
    ],
    dependencies: [
        .package(url: "https://github.com/tuken/CHTTPParser.git", from: "0.15.0"),
        .package(url: "https://github.com/tuken/ProrsumNet.git", from: "0.3.0"),
    ],
    targets: [
        .target(name: "Prorsum", dependencies: ["CHTTPParser", "ProrsumNet"]),
        .target(name: "Performance", dependencies: ["Prorsum"]),
        .testTarget(name: "ProrsumTests", dependencies: ["Prorsum"])
    ]
)
