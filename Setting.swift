import ProjectDescription

public struct Setting {
  /// AppName
  static let appName: String = "App"
  /// iOS Version
  static let deploymentTarget: DeploymentTarget = DeploymentTarget.iOS(
    targetVersion: "16.0",
    devices: [.iphone]
  )
  /// bundleId
  static let bundleId: String = "com.minan.\(appName)"
}

