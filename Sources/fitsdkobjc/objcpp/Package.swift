// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

////////////////////////////////////////////////////////////////////////////////
// The following FIT Protocol software provided may be used with FIT protocol
// devices only and remains the copyrighted property of Garmin Canada Inc.
// The software is being provided on an "as-is" basis and as an accommodation,
// and therefore all warranties, representations, or guarantees of any kind
// (whether express, implied or statutory) including, without limitation,
// warranties of merchantability, non-infringement, or fitness for a particular
// purpose, are specifically disclaimed.
//
// Copyright 2021 Garmin International, Inc.
////////////////////////////////////////////////////////////////////////////////


import PackageDescription

let package = Package(
    name: "FIT",
    platforms: [
            .iOS(.v13),
            .macOS(.v10_15),
            .tvOS(.v13),
            .watchOS(.v6),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FIT",
            targets: ["SwiftFIT","ObjcFIT"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "cppfit",
            dependencies: [],
             resources: [
                .copy("include")],
            cSettings: [
                .headerSearchPath("./include/")]),
        .target(
            name: "ObjcFIT",
            dependencies: ["cppfit"],
            cSettings: [
                .headerSearchPath("../cppfit/include")]),
        .target(
            name: "SwiftFIT",
            dependencies: ["ObjcFIT"]),
        .testTarget(
            name: "FITTests",
            dependencies: ["SwiftFIT"]),
    ],
    cxxLanguageStandard: .gnucxx11
)

