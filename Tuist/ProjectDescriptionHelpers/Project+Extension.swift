//
//  Project+Extension.swift
//  ProjectDescriptionHelpers
//
//  Created by 최민한 on 8/16/24.
//

import ProjectDescription

public extension Project {
  static func makeModule(
    name: String,
    product: Product = .framework,
    needTest: Bool = true,
    hasResource: Bool = false,
    packages: [Package] = [],
    dependencies: [TargetDependency] = [],
    testDependencies: [TargetDependency] = [],
    infoPlist: [String: Plist.Value] = [:]
  ) -> Project {
    var targets: [Target] = [
      .target(
        name: name,
        destinations: .iOS,
        product: product,
        bundleId: bundleId(name: name),
        deploymentTargets: .common,
        infoPlist: .extendingDefault(with: infoPlist),
        sources: ["Sources/**"],
        resources: hasResource ? ["Resources/**"] : nil,
        dependencies: dependencies
      )
    ]

    if needTest {
      targets.append(
        .target(
          name: "\(name)Tests",
          destinations: .iOS,
          product: .unitTests,
          bundleId: bundleId(name: "\(name)Tests"),
          deploymentTargets: .common,
          infoPlist: .default,
          sources: ["Tests/**"],
          resources: [],
          dependencies: [.target(name: name)] + testDependencies
        )
      )
    }

    return Project(
      name: name,
      options: .options(
        automaticSchemesOptions: .enabled(codeCoverageEnabled: true),
        textSettings: .textSettings(indentWidth: 2, tabWidth: 2)
      ),
      packages: packages,
      targets: targets
    )
  }
}
