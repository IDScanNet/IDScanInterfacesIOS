// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IDScanInterfacesIOS",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "IDScanParserInterfaces",
            targets: ["IDScanParserInterfaces"]),
        .library(
            name: "IDScanScannerInterfaces",
            targets: ["IDScanScannerInterfaces"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IDScanNet/IDScanCoreIOS.git", .upToNextMajor(from: "2.0.0"))
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
        .target(
            name: "IDScanScannerInterfaces",
            dependencies: [
                "IDScanInterfacesPub"
            ]),
        .testTarget(
            name: "IDScanInterfacesTests",
            dependencies: [
                "IDScanInterfacesPub",
                "IDScanParserInterfaces",
                "IDScanScannerInterfaces",
                .product(name: "IDScanComponentTests", package: "IDScanCoreIOS")
            ]),
    ]
)
