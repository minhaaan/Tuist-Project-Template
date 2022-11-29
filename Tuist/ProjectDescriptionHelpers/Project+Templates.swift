import ProjectDescription

/// Project helpers are functions that simplify the way you define your project.
/// Share code to create targets, settings, dependencies,
/// Create your own conventions, e.g: a func that makes sure all shared targets are "static frameworks"
/// See https://docs.tuist.io/guides/helpers/

extension Project {
  /// Helper function to create the Project for this ExampleApp
  public static func makeAppTargets(
    name: String,
    dependencies: [TargetDependency]
  ) -> [Target] {
    let infoPlist: [String: InfoPlist.Value] = [
      "CFBundleShortVersionString": "1.0",
      "CFBundleVersion": "1",
      "UIMainStoryboardFile": "",
      "UILaunchStoryboardName": "LaunchScreen",
    ]
    
    let baseSettings: [String: SettingValue] = [
      "DEVELOPMENT_TEAM": "7T8JF3V3RR"
    ]
    
    let appTarget = Target(
      name: name,
      platform: .iOS,
      product: .app,
      bundleId: "com.minan.\(name)",
      deploymentTarget: .iOS(targetVersion: "16.0", devices: [.iphone]),
      infoPlist: .extendingDefault(with: infoPlist),
      sources: ["Targets/\(name)/Sources/**"],
      resources: ["Targets/\(name)/Resources/**"],
      dependencies: dependencies,
      settings: .settings(base: baseSettings, configurations: [], defaultSettings: .recommended)
    )
    
    let testTarget = Target(
      name: "\(name)Tests",
      platform: .iOS,
      product: .unitTests,
      bundleId: "com.minan.\(name)Tests",
      deploymentTarget: .iOS(targetVersion: "16.0", devices: [.iphone]),
      infoPlist: .default,
      sources: ["Targets/\(name)/Tests/**"],
      dependencies: [
        .target(name: "\(name)")
      ],
      settings: .settings(base: baseSettings, configurations: [], defaultSettings: .recommended)
    )
    return [appTarget, testTarget]
  }
}
