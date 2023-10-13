import ProjectDescription
import ProjectDescriptionHelpers

let dependencies: [TargetDependency] = [
]

let project = Project(
  name: "TuistProjectTemplate",
  organizationName: "com.minan.TuistProjectTemplate",
  packages: [],
  settings: nil,
  targets: Project.makeAppTargets(
    name: "TuistProjectTemplate",
    dependencies: dependencies
  )
)
