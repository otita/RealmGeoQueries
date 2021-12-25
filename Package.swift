// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GeoQueries",
    products: [
        .library(
            name: "GeoQueries",
            targets: ["GeoQueries"]),
    ],
    dependencies: [
        .package(url: "https://github.com/realm/realm-cocoa.git", from: "10.0.0"),
    ],
    targets: [
        .target(
            name: "GeoQueries",
            dependencies: ["RealmSwift"]
        ),
        .testTarget(
          name: "GeoQueriesTests",
          dependencies: ["GeoQueries"]
        )
    ]
)
