//
//  RecordLyricApp.swift
//  RecordLyric
//
//  Created by TAEHYOUNG KIM on 2022/12/11.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct RecordLyricApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environmentObject(ModelStore())
            LoginView()
                .environmentObject(UserStore())
        }
        
    }
}
