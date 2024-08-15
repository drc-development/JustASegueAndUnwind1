//
//  JustASegueAndUnwind1App.swift
//  JustASegueAndUnwind1
//
//  Created by Daryl Cox on 08/15/2024.
//  Copyright © JustMacApps 2023-2024. All rights reserved.
//

import SwiftUI

@main
struct JustASegueAndUnwind1App: App 
{
    
    struct ClassInfo
    {
        
        static let sClsId        = "JustASegueAndUnwind1App"
        static let sClsVers      = "v1.0101"
        static let sClsDisp      = sClsId+"(.swift).("+sClsVers+"):"
        static let sClsCopyRight = "Copyright (C) JustMacApps 2023-2024. All Rights Reserved."
        static let bClsTrace     = true
        static let bClsFileLog   = true
        
    }

    // App Data field(s):

    let sAppBundlePath:String = Bundle.main.bundlePath

    var body: some Scene 
    {

        let _ = xcgLogMsg("\(ClassInfo.sClsDisp):body(some Scene) \(AppGlobalInfo.sGlobalInfoAppCopyRight)...")
        let _ = xcgLogMsg("\(ClassInfo.sClsDisp):body(some Scene) - 'sAppBundlePath' is [\(sAppBundlePath)]...")
        
        WindowGroup 
        {

            ContentView()
                .onOpenURL(perform: 
                { url in
                    
                    xcgLogMsg("\(ClassInfo.sClsDisp):ContentView.onOpenURL() performed for the URL of [\(url)]...")

                })

        }
        .handlesExternalEvents(matching: [])

    }

    func xcgLogMsg(_ sMessage:String)
    {

    //  self.appDelegate.xcgLogMsg("\(sMessage)")
        print("\(sMessage)")

        return

    }   // End of func xcgLogMsg().

}

