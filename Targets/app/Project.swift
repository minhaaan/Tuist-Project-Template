import ProjectDescription
import ProjectDescriptionHelpers

let baseSetting: [String: SettingValue] = [
  "DEVELOPMENT_TEAM": "7T8JF3V3RR"
]

let appTarget = Target(
  name: Setting.appName,
  platform: .iOS,
  product: .app,
  productName: Setting.appName,
  bundleId: Setting.bundleId,
  deploymentTarget: Setting.deploymentTarget,
  infoPlist: .extendingDefault(with: [
    "CFBundleShortVersionString": "1.0",
    "CFBundleVersion": "1",
    "UIMainStoryboardFile": "",
    "UILaunchStoryboardName": "LaunchScreen",
  ]),
  sources: ["Sources/**"],
  resources: ["Resources/**"],
  dependencies: [
  ],
  settings: .settings(
    base: baseSetting,
    configurations: [.debug(name: "Debug"), .release(name: "Release")],
    defaultSettings: .recommended
  )
)

let testTarget = Target(
  name: "\(Setting.appName)Tests",
  platform: .iOS,
  product: .unitTests,
  bundleId: "\(Setting.bundleId)Tests",
  deploymentTarget: Setting.deploymentTarget,
  infoPlist: .default,
  sources: ["Tests/**"],
  dependencies: [
    .target(name: Setting.appName)
  ],
  settings: .settings(
    base: baseSetting, configurations: [], defaultSettings: .recommended
  )
)

let project = Project(
  name: Setting.appName,
  packages: [],
  settings: nil,
  targets: [
    appTarget,
    testTarget
  ]
)
