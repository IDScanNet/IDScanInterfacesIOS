// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IDScanInterfacesPub",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "IDScanParserInterfaces",
            targets: ["IDScanParserInterfaces"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IDScanNet/IDScanCoreIOS.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(
            name: "IDScanInterfacesPub",
            dependencies: [
                .product(name: "IDScanCore", package: "IDScanCoreIOS")
            ],
            resources: [
                .copy("ComponentInfo.plist")
            ]),
        .target(
            name: "IDScanParserInterfaces",
            dependencies: [
                "IDScanInterfacesPub"
            ]),
        .testTarget(
            name: "IDScanInterfacesTests",
            dependencies: [
                "IDScanInterfacesPub",
                "IDScanParserInterfaces",
                .product(name: "IDScanComponentTests", package: "IDScanCoreIOS")
            ]),
    ]
)
