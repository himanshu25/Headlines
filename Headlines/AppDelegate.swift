//
//  AppDelegate.swift
//  Headlines
//
//  Created by Himanshu on 05/28/18.
//  Copyright © 2018 Himanshu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var app :App?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        if let window = window {
            // app = App(window: window)
        }
        
        return true
    }




}

