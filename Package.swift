// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "MappableMobileNavikit",
    defaultLocalization: "en",
    platforms: [.iOS("12.0")],
    products: [
        .library(
            name: "MappableMobileNavikit",
            type: .static,
            targets: [
                "MappableMobileNavikit",
                "MappableMobileNavikitResources"
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MappableMobileNavikit",
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MappableMobile-4.14.0-navikit.framework.zip",
            checksum: "36623ae6d6fc9a6c01b89cbf4ef9051d745c002e1d10e06a67fefaaf262bfe7e"
        ),
        .target(
            name: "MappableMobileNavikitResources",
            path: "Resources",
            resources: [.process("Contents")],
            linkerSettings: [
                .linkedFramework("CoreFoundation"),
                .linkedFramework("Foundation"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("UIKit"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("Security"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("DeviceCheck"),
                .linkedLibrary("resolv"),
                .linkedLibrary("c++"),
            ]

        )
    ]
)
