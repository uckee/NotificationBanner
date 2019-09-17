// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "NotificationBannerSwift",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "NotificationBannerSwift", targets: ["NotificationBannerSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/cbpowell/MarqueeLabel.git", Package.Dependency.Requirement._branchItem("xcode11")),
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.1"),
    ],
    targets: [
        .target(name: "NotificationBannerSwift", dependencies: ["SnapKit", "MarqueeLabel"], path: "NotificationBanner/Classes")
    ]
)
