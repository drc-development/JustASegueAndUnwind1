//
//  FirstViewController.swift
//  JustASegueAndUnwind1
//
//  Created by Daryl Cox on 08/16/2024.
//  Copyright © JustMacApps 2023-2024. All rights reserved.
//

import Foundation
import UIKit

class FirstViewController: UIViewController
{
    
    struct ClassInfo
    {
        
        static let sClsId        = "FirstViewController"
        static let sClsVers      = "v1.0302"
        static let sClsDisp      = sClsId+"(.swift).("+sClsVers+"):"
        static let sClsCopyRight = "Copyright (C) JustMacApps 2023-2024. All Rights Reserved."
        static let bClsTrace     = true
        static let bClsFileLog   = true
        
    }

    @IBOutlet weak var textFieldLastName:UITextField!
    @IBOutlet weak var labelFirstName:UILabel!
    
    public var firstname:String? = nil
    
    override func viewDidLoad() 
    {
        
        let sCurrMethod:String = #function
        let sCurrMethodDisp    = "'"+sCurrMethod+"'"

        super.viewDidLoad()
        
        self.xcgLogMsg("\(ClassInfo.sClsDisp)\(sCurrMethodDisp) Invoked...")
        
        DispatchQueue.main.async 
        {
            self.textFieldLastName.becomeFirstResponder()
        }
        
        let sFirstname:String    = "Firstmame: \(self.firstname ?? "")"
        self.labelFirstName.text = sFirstname

        // Exit...

        self.xcgLogMsg("\(ClassInfo.sClsDisp)\(sCurrMethodDisp) Exiting - 'sFirstname' is [\(sFirstname)]...")

        return
        
    }   // End of viewDidLoad().
    
    override func viewDidDisappear(_ animated: Bool) 
    {
        
        let sCurrMethod:String = #function
        let sCurrMethodDisp    = "'"+sCurrMethod+"'"

        self.xcgLogMsg("\(ClassInfo.sClsDisp)\(sCurrMethodDisp) Invoked...")
        
        DispatchQueue.main.async
        {
            self.textFieldLastName.resignFirstResponder()
        }
        
        // Exit...

        self.xcgLogMsg("\(ClassInfo.sClsDisp)\(sCurrMethodDisp) Exiting...")

        return
        
    }    // End of override func viewDidDisappear(_ animated:).
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) 
    {
        
        let sCurrMethod:String = #function
        let sCurrMethodDisp    = "'"+sCurrMethod+"'"

        self.xcgLogMsg("\(ClassInfo.sClsDisp)\(sCurrMethodDisp) Invoked...")
        
        guard let landingVC = segue.destination as? LandingPageViewController else { return }

        var sFullname:String = ""
        
        if let firstname = self.firstname, let lastname = self.textFieldLastName.text
        {
            
            sFullname          = "\(firstname) \(lastname)"
            landingVC.fullname = sFullname
            
        }
        
        // Exit...

        self.xcgLogMsg("\(ClassInfo.sClsDisp)\(sCurrMethodDisp) Exiting - 'sFullname' is [\(sFullname)]...")

        return
        
    }   // End of override func prepare(for segue: sender:).
    
    func xcgLogMsg(_ sMessage:String)
    {

    //  self.appDelegate.xcgLogMsg("\(sMessage)")
        print("\(sMessage)")

        // Exit...

        return

    }   // End of func xcgLogMsg().

}   // End of class FirstViewController(UIViewController).

