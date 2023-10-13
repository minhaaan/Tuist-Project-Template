import ProjectDescription

public struct Setting {
  /// AppName
  public static let appName: String = "App"
  /// iOS Version
  public static let deploymentTarget: DeploymentTarget = DeploymentTarget.iOS(
    targetVersion: "16.0",
    devices: [.iphone]
  )
  /// bundleId
  public static let bundleId: String = "com.minan.\(appName)"
}

