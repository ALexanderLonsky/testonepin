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
    targets: [
        .binaryTarget(
            name: "PINCache",
            path: "PINCache.xcframework"),
	.binaryTarget(
            name: "PINOperation",
            path: "PINOperation.xcframework"),
	.target(
            name: "PINCacheWrapper",
            dependencies: [
               .target(name: "PINCache"), .target(name: "PINOperation")
            ],
            path: "./Sources"      
        )
    ]
)
