//
//  AppDelegate.swift
//  SanjiKanji
//
//  Created by Andriy K. on 9/17/17.
//  Copyright © 2017 haawa. All rights reserved.
//

import UIKit
import AllKanjiExportKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
    Exporter.export()
    
    return true
  }

}

