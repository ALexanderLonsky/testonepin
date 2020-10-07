// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PINCache",
    products: [
        .library(
            name: "PINCache",
            targets: ["PINCacheWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pinterest/PINOperation.git", from: "1.2.0"),        
    ],
    targets: [
        .binaryTarget(
            name: "PINCache",
            path: "PINCache.xcframework"),
	.target(
            name: "PINCacheWrapper",
            dependencies: [
               .target(name: "PINCache"),
                "PINOperation"
            ],
            path: "./Sources"      
        )
    ]
)
