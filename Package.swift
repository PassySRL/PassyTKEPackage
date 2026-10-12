// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "PassyTKEPackage",
    platforms: [.iOS("15.6"), .watchOS("10.6"), .macCatalyst("15.6")],
    products: [
        .library(name: "PassyTKE",
                 targets: ["PassyTKEDependencies"])
    ],
    dependencies: [
        .package(url: "https://github.com/PassySRL/PassyCorePackage.git", exact: "1.0.38")
    ],
    targets: [
        .target(name: "PassyTKEDependencies",
                dependencies: ["PassyTKE",
                               .product(name: "PassyCore",
                                        package: "PassyCorePackage")]),
        .binaryTarget(name: "PassyTKE",
                      url: "https://github.com/PassySRL/PassyTKEPackage/releases/download/0.1.9/PassyTKE-0.1.9.xcframework.zip", checksum: "0c76df47aa97e466e19d928a9dc32997fb1de72fc285c1635e90397ca557998b")
    ]
)
