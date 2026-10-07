// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "PassyTKEPackage",
    platforms: [.iOS(.v17), .watchOS("10.6"), .macCatalyst(.v17)],
    products: [
        .library(name: "PassyTKE",
                 targets: ["PassyTKEDependencies"])
    ],
    dependencies: [
        .package(url: "https://github.com/PassySRL/PassyCorePackage.git", exact: "1.0.37")
    ],
    targets: [
        .target(name: "PassyTKEDependencies",
                dependencies: ["PassyTKE",
                               .product(name: "PassyCore",
                                        package: "PassyCorePackage")]),
        .binaryTarget(name: "PassyTKE",
                      url: "https://github.com/PassySRL/PassyTKEPackage/releases/download/0.1.8/PassyTKE-0.1.8.xcframework.zip", checksum: "8f3007542da11755a9a4ca4ca79c84ffe297b3144974e5730c8fded74b65480a")
    ]
)
