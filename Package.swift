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
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MappableMobile-4.24.0-navikit.framework.zip",
            checksum: "319ddd34584e5f6b8f7717a1653f4630340247aec7832471ff520f7774ac9538"
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
                .linkedFramework("NetworkExtension"),
                .linkedLibrary("resolv"),
                .linkedLibrary("c++"),
            ]

        )
    ]
)
