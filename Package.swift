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
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MappableMobile-4.14.1-navikit.framework.zip",
            checksum: "ceab9947875d3983aed6e7615b48ae6b5b289138797055e30ce2c2df4269b8b7"
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
