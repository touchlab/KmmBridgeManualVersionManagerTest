// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeManualVersionTest/co/touchlab/manualversiontest/shared-kmmbridge/1.0.11/shared-kmmbridge-1.0.11.zip"
let remoteKotlinChecksum = "f4e8935f205d564145ab9f8847d7c48f13f2d9e1642f0ebc955773632d2253bd"
let packageName = "shared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)