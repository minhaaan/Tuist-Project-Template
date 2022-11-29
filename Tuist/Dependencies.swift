import ProjectDescription
import ProjectDescriptionHelpers

let pack = SwiftPackageManagerDependencies([
])

let dependencies = Dependencies(
  carthage: nil,
  swiftPackageManager: pack,
  platforms: [.iOS])
