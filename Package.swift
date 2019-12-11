// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Fuzi",
    products: [
        .library(name: "Fuzi", targets: ["Fuzi"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ndavon/Clibxml2.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "Fuzi",
            path: "Sources"
            // Headers and linking for libxml2
//            cSettings: [.headerSearchPath("$(SDKROOT)/usr/include/libxml2")],
//            linkerSettings: [.linkedLibrary("xml2")]
        ),
        .testTarget(name: "FuziTests",
                    dependencies: ["Fuzi"],
                    path: "Tests"
        )
    ]
)
