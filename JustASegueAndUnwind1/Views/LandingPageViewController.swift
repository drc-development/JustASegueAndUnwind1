//
//  LandingPageViewController.swift
//  JustASegueAndUnwind1
//
//  Created by Daryl Cox on 08/16/2024.
//  Copyright © JustMacApps 2023-2024. All rights reserved.
//

import Foundation
import UIKit

class LandingPageViewController: UIViewController
{
    
    struct ClassInfo
    {
        
        static let sClsId        = "LandingPageViewController"
        static let sClsVers      = "v1.0201"
        static let sClsDisp      = sClsId+"(.swift).("+sClsVers+"):"
        static let sClsCopyRight = "Copyright (C) JustMacApps 2023-2024. All Rights Reserved."
        static let bClsTrace     = true
        static let bClsFileLog   = true
        
    }

    @IBOutlet weak var textFieldFirstName:UITextField!
    @IBOutlet weak var labelFullname:UILabel!
    
    var fullname:String? = nil
    
    override func viewWillAppear(_ animated: Bool) 
    {
        
        let sCurrMethod:String = #function
        let sCurrMethodDisp    = "'"+sCurrMethod+"'"

        self.xcgLogMsg("\(ClassInfo.sClsDisp)\(sCurrMethodDisp) Invoked...")
        
        guard let fullname = fullname
        else { return }

        let sFullname:String    = "Fullname: \(fullname)"
        textFieldFirstName.text = ""
        labelFullname.text      = sFullname

        // Exit...

        self.xcgLogMsg("\(ClassInfo.sClsDisp)\(sCurrMethodDisp) Exiting - 'sFullname' is [\(sFullname)]...")

        return
        
    }    // End of override func viewWillAppear(_ animated:).
    
    override func prepare(for segue:UIStoryboardSegue, sender:Any?)
    {
        
        let sCurrMethod:String = #function
        let sCurrMethodDisp    = "'"+sCurrMethod+"'"

        self.xcgLogMsg("\(ClassInfo.sClsDisp)\(sCurrMethodDisp) Invoked...")
        
        guard let firstVC = segue.destination as? FirstViewController
        else { return }
        
        let sFirstname:String = textFieldFirstName.text ?? ""
        firstVC.firstname     = sFirstname

        // Exit...

        self.xcgLogMsg("\(ClassInfo.sClsDisp)\(sCurrMethodDisp) Exiting - 'sFirstname' is [\(sFirstname)]...")

        return
        
    }   // End of override func prepare(for segue:, sender:).
    
    // To Perform 'unwind' Seque:
    
    @IBAction func performUnwindSegueOperation(_ sender:UIStoryboardSegue)
    {
        
        let sCurrMethod:String = #function
        let sCurrMethodDisp    = "'"+sCurrMethod+"'"

        self.xcgLogMsg("\(ClassInfo.sClsDisp)\(sCurrMethodDisp) Invoked...")
        
        guard let landingVC = sender.source as? LandingPageViewController
        else { return }
        
        let sFullname:String = textFieldFirstName.text ?? ""
        landingVC.fullname   = sFullname

        // Exit...

        self.xcgLogMsg("\(ClassInfo.sClsDisp)\(sCurrMethodDisp) Exiting - 'sFullname' is [\(sFullname)]...")

        return
        
    }   // End of @IBAction func performUnwindSegueOperation(_ sender:)
    
    func xcgLogMsg(_ sMessage:String)
    {

    //  self.appDelegate.xcgLogMsg("\(sMessage)")
        print("\(sMessage)")

        return

    }   // End of func xcgLogMsg().

}   // End of class LandingPageViewController(UIViewController)
