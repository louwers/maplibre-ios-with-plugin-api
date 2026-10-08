// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MapLibre Native with Plugin API",
    products: [
        // Drop-in replacement for the standard MapLibre product: `import MapLibre`.
        .library(
            name: "MapLibre",
            targets: ["MapLibre"]),
        // Header-only C plugin API for plugin packages. Applications link `MapLibre`.
        .library(
            name: "MapLibrePluginApi",
            targets: ["MapLibrePluginApi"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "MapLibre",
            url: "https://github.com/maplibre/maplibre-native/releases/download/ios-v0.0.0/MapLibre.dynamic.plugins.xcframework.zip",
            checksum: "0000000000000000000000000000000000000000000000000000000000000000"),
        .target(
            name: "MapLibrePluginApi",
            path: "Sources/MapLibrePluginApi")
    ]
)
