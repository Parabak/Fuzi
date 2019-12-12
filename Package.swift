// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Fuzi",
    products: [
        .library(name: "Fuzi", targets: ["Fuzi"]),
    ],
    targets: [
        .systemLibrary(
                name: "libxmlKanna",
                path: "Modules",
                pkgConfig: "libxml-2.0",
                providers: [
                    .brew(["libxml2"])
                ]),
        .target(name: "Fuzi",
            dependencies: ["libxmlKanna"],
            path: "Sources"
        ),
        .testTarget(name: "FuziTests",
                    dependencies: ["Fuzi"],
                    path: "Tests"
        )
    ]
)

/**
 
 import PackageDescription

 let package = Package(
     name: "Kanna",
     products: [
       .library(name: "Kanna", targets: ["Kanna"]),
     ],
     targets: [
         .systemLibrary(
                 name: "libxmlKanna",
                 path: "Modules",
                 pkgConfig: "libxml-2.0",
                 providers: [
                     .brew(["libxml2"]),
                     .apt(["libxml2-dev"])
                 ]),
         .target(name: "Kanna",
                 dependencies: ["libxmlKanna"],
                 path: "Sources",
                 exclude: [
                     "Sources/Info.plist",
                     "Sources/Kanna.h",
                     "Tests/KannaTests/Data"
                 ]),
         .testTarget(name: "KannaTests",
                     dependencies: ["Kanna"]
                 )
     ]
 )
 
 */
