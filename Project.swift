import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

/*
                +-------------+
                |             |
                |     App     | Contains TuistProjectTemplate App target and TuistProjectTemplate unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

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
