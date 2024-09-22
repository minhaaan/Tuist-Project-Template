import ProjectDescription

public func bundleId(name: String) -> String {
  return "com.minan.\(name)"
}

public extension DeploymentTargets {
  static var common: Self {
    return .iOS("15.0")
  }
}
