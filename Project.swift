import ProjectDescription
import ProjectDescriptionHelpers

let dependencies: [TargetDependency] = [
]

let project = Project(
  name: Setting.appName,
  organizationName: "com.minan.TuistProjectTemplate",
  packages: [],
  settings: nil,
  targets: Project.makeAppTargets(
    name: "TuistProjectTemplate",
    dependencies: dependencies
  )
)
