// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "SwiftLMDB",
    products: [
        .library(name: "SwiftLMDB", targets: ["SwiftLMDB"]),
    ],
    
    dependencies: [
        .package(url: "https://github.com/vaibahv7888/CLMDB_github.git", exact: "0.9.34")
    ],

    targets: [
        .target(name: "SwiftLMDB", dependencies: [.product(name: "LMDB", package: "CLMDB_github")], path: "Sources"),
        .testTarget(name: "SwiftLMDBTests", dependencies: ["SwiftLMDB"]),
    ]
)
