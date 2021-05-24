// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RandomNumberGenerator",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "RandomNumberGenerator",
            targets: ["RandomNumberGenerator"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "git@github.com:philipgeorgiev123/NumbersA.git", from: "0.1.1"),
        
        // .package(url: "git@github.com:philipgeorgiev123/NumbersA.git", from: "0.1.0"),
        // .package(url: "https://example.com/example-package.git", "1.2.3"..<"1.2.6"),
        // .package(url: "http://example.com.com/ExamplePackage/ExamplePackage", from: "1.2.3"),
        // .package(url: "git@github.com:philipgeorgiev123/NumbersA.git", .exact("0.1.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "RandomNumberGenerator",
            dependencies: ["NumbersA"]),
        .testTarget(
            name: "RandomNumberGeneratorTests",
            dependencies: ["RandomNumberGenerator", "NumbersA"]),
    ]
)
