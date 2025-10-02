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
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MappableMobile-4.23.0-navikit.framework.zip",
            checksum: "00de065cd8a398e9f1072a44cc2f9e70fb43a09b8e93ff468c99d4654097d491"
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
