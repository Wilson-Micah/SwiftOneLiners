// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftOneLiners",
    dependencies: [
    ],
    targets: [
        .target(name: "BreadthFirstTraversal"),
        .target(name: "DepthFirstTraversal"),
        .target(name: "EvenFibonacciNumbers"),
        .target(name: "FibonacciIterative"),
        .target(name: "FibonacciRecursive"),
        .target(name: "FizzBuzz"),
        .target(name: "GCDIterativeImproved"),
        .target(name: "GCDIterativeOriginal"),
        .target(name: "GCDRecursive"),
        .target(name: "ProjectEulerProblemFive"),
        .target(name: "ProjectEulerProblemOne"),
        .target(name: "ProjectEulerProblemSix"),
        .target(name: "ProjectEulerProblemTwentyTwo"),
    ],
    swiftLanguageVersions: [.v5]
)
