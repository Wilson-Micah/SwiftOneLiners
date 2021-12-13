// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftOneLiners",
    dependencies: [
    ],
    targets: [
        .target(name: "Anagrams"),
        .target(name: "BreadthFirstTraversal"),
        .target(name: "DepthFirstTraversal"),
        .target(name: "DuplicateCharacters"),
        .target(name: "EvenFibonacciNumbers"),
        .target(name: "FibonacciIterative"),
        .target(name: "FibonacciRecursive"),
        .target(name: "FizzBuzz"),
        .target(name: "GCDIterativeImproved"),
        .target(name: "GCDIterativeOriginal"),
        .target(name: "GCDRecursive"),
        .target(name: "LargestPalindromeProduct"),
        .target(name: "Palindrome"),
        .target(name: "ProjectEulerProblemFive"),
        .target(name: "ProjectEulerProblemOne"),
        .target(name: "ProjectEulerProblemSix"),
        .target(name: "ProjectEulerProblemTwentyTwo"),
        .target(name: "UniversalTuringMachine"),
    ],
    swiftLanguageVersions: [.v5]
)
