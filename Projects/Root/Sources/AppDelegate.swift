//
//  AppDelegate.swift
//  App 
//
//  Created by 최민한 on 9/7/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  public var window: UIWindow?

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    let window = UIWindow(frame: UIScreen.main.bounds)
    self.window = window
    
    window.makeKeyAndVisible()
    window.rootViewController = UIViewController()

    return true
  }

}

