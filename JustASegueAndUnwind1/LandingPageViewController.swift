//
//  LandingPageViewController.swift
//  JustASegueAndUnwind1
//
//  Created by Daryl Cox on 8/16/24.
//

import Foundation
import UIKit

class LandingPageViewController: UIViewController
{
    
    @IBOutlet weak var textFieldFirstName:UITextField!
    @IBOutlet weak var labelFullname:UILabel!
    
    var fullname:String? = nil
    
    override func viewWillAppear(_ animated: Bool) 
    {
        
        guard let fullname = fullname
        else { return }
        
        textFieldFirstName.text = ""
        labelFullname.text      = "Fullname: \(fullname)"
        
    }    // End of override func viewWillAppear(_ animated:).
    
    override func prepare(for segue:UIStoryboardSegue, sender:Any?)
    {
        
        guard let firstVC = segue.destination as? FirstViewController
        else { return }
        
        firstVC.firstname = textFieldFirstName.text
        
    }   // End of override func prepare(for segue:, sender:).
    
    //To Perform Unwind Seque:
    
    @IBAction func performUnwindSegueOperation(_ sender:UIStoryboardSegue)
    {
        
        guard let landingVC = sender.source as? LandingPageViewController
        else { return }
        
        landingVC.fullname = textFieldFirstName.text
        
    }   // End of @IBAction func performUnwindSegueOperation(_ sender:)
    
}   // End of class LandingPageViewController(UIViewController)
