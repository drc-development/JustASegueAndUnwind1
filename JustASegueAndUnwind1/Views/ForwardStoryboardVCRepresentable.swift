//
//  ForwardStoryboardVCRepresentable.swift
//  JustASegueAndUnwind1
//
//  Created by Daryl Cox on 08/18/2024.
//  Copyright © JustMacApps 2023-2024. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

struct ForwardStoryboardVCRepresentable: UIViewControllerRepresentable 
{
    
    struct ClassInfo
    {
        
        static let sClsId        = "ForwardStoryboardVCRepresentable"
        static let sClsVers      = "v1.0102"
        static let sClsDisp      = sClsId+"(.swift).("+sClsVers+"):"
        static let sClsCopyRight = "Copyright (C) JustMacApps 2023-2024. All Rights Reserved."
        static let bClsTrace     = true
        static let bClsFileLog   = true
        
    }

    func makeUIViewController(context:Context) -> some UIViewController 
    {
        
        let sCurrMethod:String = #function
        let sCurrMethodDisp    = "'"+sCurrMethod+"'"

        self.xcgLogMsg("\(ClassInfo.sClsDisp)\(sCurrMethodDisp) Invoked...")
        
        let uiStoryboard = UIStoryboard.init(name: "Main", bundle: nil)

        print("...'\(ClassInfo.sClsDisp)\(sCurrMethodDisp)' UIStoryboard 'self.uiStoryboard' <Main.storyboard> obtained [\(uiStoryboard)]...")

        let uiInitialViewController = uiStoryboard.instantiateInitialViewController()

        print("...\(ClassInfo.sClsDisp)\(sCurrMethodDisp)' UIStoryboard.instantiateInitialViewController() 'UIViewController' obtained [\(String(describing: uiInitialViewController))] as 'uiInitialViewController'...")

        // Exit...

        self.xcgLogMsg("\(ClassInfo.sClsDisp)\(sCurrMethodDisp) Exiting - returning 'uiInitialViewController'...")

        return uiInitialViewController! as UIViewController
        
    }   // End of makeUIViewController(context:).

    func updateUIViewController(_ uiViewController:UIViewControllerType, context:Context) 
    {
        
        let sCurrMethod:String = #function
        let sCurrMethodDisp    = "'"+sCurrMethod+"'"

        self.xcgLogMsg("\(ClassInfo.sClsDisp)\(sCurrMethodDisp) Invoked...")
        
        // Exit...

        self.xcgLogMsg("\(ClassInfo.sClsDisp)\(sCurrMethodDisp) Exiting...")

        return
        
    }   // End of func updateUIViewController(_ uiViewController:).
    
    func xcgLogMsg(_ sMessage:String)
    {

    //  self.appDelegate.xcgLogMsg("\(sMessage)")
        print("\(sMessage)")

        // Exit...

        return

    }   // End of func xcgLogMsg().

}   // End of class ForwardStoryboardVCRepresentable(UIViewController).

