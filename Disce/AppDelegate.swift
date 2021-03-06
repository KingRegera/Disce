//
//  AppDelegate.swift
//  Disce
//
//  Created by Kushagra Singh on 5/29/20.
//  Copyright © 2020 PolyNexus. All rights reserved.
//

import Cocoa
import SwiftUI
import Firebase

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!
    
    override init() {

    FirebaseApp.configure()

    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
    
        
        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Create the window and set the content view. 
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered, defer: false)
        window.center()
        window.setFrameAutosaveName("Main Window")
        window.contentView = NSHostingView(rootView: contentView.environmentObject(SessionStore()))
        window.makeKeyAndOrderFront(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

