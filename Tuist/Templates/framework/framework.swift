import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")

let template = Template(
  description: "Core, Foundation Module Template",
  attributes: [
    nameAttribute
  ],
  items: [
    .file(path: "\(nameAttribute)/Project.swift", templatePath: "Framework.stencil"),
    .string(
      path: "\(nameAttribute)/Sources/dummy.swift",
      contents: "import Foundation"
    ),
    .string(
      path: "\(nameAttribute)/Resources/.gitkeep",
      contents: ""
    ),
    .string(
      path: "\(nameAttribute)/Tests/dummy.swift",
      contents: "import Foundation"
    )
  ]
)
