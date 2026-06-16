// swift-tools-version:5.9
import PackageDescription

let version = "1.14.3"
// checksums are updated automatically by ./faiss.sh build
let checksum = "d102e5b46fe48cdd754870c16fe3a0f7220fba136b48c4febcdc30809fa8b7ec"
let checksum_c = "664e84f393929d5d0a10f164b3c2ea6b4636b604de68095e77f2fd08bdb32063"

let package = Package(
    name: "FAISS",
    platforms: [
        .macOS(.v13),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "FAISS",
            targets: ["FAISS"]),
        .library(
            name: "FAISS_C",
            targets: ["FAISS_C"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FAISS",
            url: "https://github.com/DeveloperMindset-com/faiss-mobile/releases/download/v\(version)/faiss.xcframework.zip",
            checksum: checksum
        ),
        .binaryTarget(
            name: "FAISS_C",
            url: "https://github.com/DeveloperMindset-com/faiss-mobile/releases/download/v\(version)/faiss_c.xcframework.zip",
            checksum: checksum_c
        )
    ]
)