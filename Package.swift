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
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MappableMobile-4.15.0-navikit.framework.zip",
            checksum: "4fe3784f89b880e9827343756c8ebbb58c039730737609953cb23a8811f0eddd"
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
