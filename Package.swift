// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Magnet",
    platforms: [
      .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "Magnet",
            targets: ["Magnet"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Clipy/Sauce", from: "2.1.0"),
    ],
    targets: [
        .target(
            name: "Magnet",
            dependencies: ["Sauce"],
            path: "Lib/Magnet"),
        .testTarget(
            name: "MagnetTests",
            dependencies: ["Magnet"],
            path: "Lib/MagnetTests"),
    ],
    swiftLanguageVersions: [.v5]
)
