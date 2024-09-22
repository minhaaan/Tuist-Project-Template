import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
  name: "App",
  product: .app,
  hasResource: true,
  dependencies: [
  ],
  infoPlist: [
    "CFBundleShortVersionString": "1.0",
    "CFBundleVersion": "1",
    "UIMainStoryboardFile": "",
    "UILaunchStoryboardName": "LaunchScreen",
    "UISupportedInterfaceOrientations": [
      "UIInterfaceOrientationPortrait"
    ],
    "UISupportedInterfaceOrientations~ipad": [
      "UIInterfaceOrientationPortrait"
    ],
  ]
)
