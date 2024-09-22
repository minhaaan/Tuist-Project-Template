//
//  feature.swift
//  ProjectDescriptionHelpers
//
//  Created by 최민한 on 8/16/24.
//

import ProjectDescription

let featureModuleNameAttribute: Template.Attribute = .required("name")

let featureModuleTemplate = Template(
  description: "Feature Module Template",
  attributes: [
    featureModuleNameAttribute,
  ],
  items: [
    // Feature
    .file(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)/Project.swift", templatePath: "Feature.stencil"),
    .string(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)/Sources/dummy.swift", contents: "import Foundation"),
    .string(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)/Resources/.gitkeep", contents: ""),
    .string(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)/Tests/dummy.swift", contents: "import Foundation"),

    // FeatureInterface
    .file(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)Interface/Project.swift", templatePath: "FeatureInterface.stencil"),
    .string(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)Interface/Sources/dummy.swift", contents: "import Foundation"),
    .string(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)Interface/Resources/.gitkeep", contents: ""),
    .string(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)Interface/Tests/dummy.swift", contents: "import Foundation"),

    // FeatureTesting
    .file(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)Testing/Project.swift", templatePath: "FeatureTesting.stencil"),
    .string(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)Testing/Sources/dummy.swift", contents: "import Foundation"),
    .string(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)Testing/Resources/.gitkeep", contents: ""),
    .string(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)Testing/Tests/dummy.swift", contents: "import Foundation"),

    // FeatureExample
    .file(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)Example/Project.swift", templatePath: "FeatureExample.stencil"),
    .string(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)Example/Sources/AppDelegate.swift", contents: """
import UIKit
import RIBs

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  public var window: UIWindow?
  private var launchRouter: LaunchRouting?

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    let window = UIWindow(frame: UIScreen.main.bounds)
    self.window = window

    return true
  }

}
"""),
    .string(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)Example/Resources/.gitkeep", contents: ""),
    .string(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)Example/Tests/dummy.swift", contents: "import Foundation"),
    // Assets.xcassets/AccentColor
    .string(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)Example/Resources/Assets.xcassets/AccentColor.colorset/Contents.json", contents: """
{
  "colors" : [
    {
      "idiom" : "universal"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}

"""),
    // Assets.xcassets/AppIcon
    .string(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)Example/Resources/Assets.xcassets/AppIcon.appiconset/Contents.json", contents: """
{
  "images" : [
    {
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "20x20"
    },
    {
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "20x20"
    },
    {
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "29x29"
    },
    {
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "29x29"
    },
    {
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "40x40"
    },
    {
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "40x40"
    },
    {
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "60x60"
    },
    {
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "60x60"
    },
    {
      "idiom" : "ipad",
      "scale" : "1x",
      "size" : "20x20"
    },
    {
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "20x20"
    },
    {
      "idiom" : "ipad",
      "scale" : "1x",
      "size" : "29x29"
    },
    {
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "29x29"
    },
    {
      "idiom" : "ipad",
      "scale" : "1x",
      "size" : "40x40"
    },
    {
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "40x40"
    },
    {
      "idiom" : "ipad",
      "scale" : "1x",
      "size" : "76x76"
    },
    {
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "76x76"
    },
    {
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "83.5x83.5"
    },
    {
      "idiom" : "ios-marketing",
      "scale" : "1x",
      "size" : "1024x1024"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}
"""),
    // Assets.xcassets/Contents.json
    .string(path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)Example/Resources/Assets.xcassets/Contents.json", contents: """
{
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}
"""),
    // LaunchScreen
    .string(
      path: "Projects/Feature/\(featureModuleNameAttribute)/\(featureModuleNameAttribute)Example/Resources/LaunchScreen.storyboard",
      contents: """
<?xml version="1.0" encoding="UTF-8"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="32700.99.1234" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" launchScreen="YES" useTraitCollections="YES" useSafeAreas="YES" colorMatched="YES" initialViewController="01J-lp-oVM">
    <device id="retina6_12" orientation="portrait" appearance="light"/>
    <dependencies>
        <deployment identifier="iOS"/>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="22685"/>
        <capability name="Safe area layout guides" minToolsVersion="9.0"/>
        <capability name="documents saved in the Xcode 8 format" minToolsVersion="8.0"/>
    </dependencies>
    <scenes>
        <!--View Controller-->
        <scene sceneID="EHf-IW-A2E">
            <objects>
                <viewController id="01J-lp-oVM" sceneMemberID="viewController">
                    <view key="view" contentMode="scaleToFill" id="Ze5-6b-2t3">
                        <rect key="frame" x="0.0" y="0.0" width="393" height="852"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <label opaque="NO" clipsSubviews="YES" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" minimumFontSize="9" translatesAutoresizingMaskIntoConstraints="NO" id="obG-Y5-kRd">
                                <rect key="frame" x="0.0" y="832" width="393" height="0.0"/>
                                <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                <color key="textColor" red="0.0" green="0.0" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                        </subviews>
                        <viewLayoutGuide key="safeArea" id="Bcu-3y-fUS"/>
                        <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                        <constraints>
                            <constraint firstItem="Bcu-3y-fUS" firstAttribute="centerX" secondItem="obG-Y5-kRd" secondAttribute="centerX" id="5cz-MP-9tL"/>
                            <constraint firstItem="obG-Y5-kRd" firstAttribute="leading" secondItem="Bcu-3y-fUS" secondAttribute="leading" constant="20" symbolic="YES" id="SfN-ll-jLj"/>
                            <constraint firstAttribute="bottom" secondItem="obG-Y5-kRd" secondAttribute="bottom" constant="20" id="Y44-ml-fuU"/>
                        </constraints>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="iYj-Kq-Ea1" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="53" y="375"/>
        </scene>
    </scenes>
</document>

"""
    )
  ]
)
