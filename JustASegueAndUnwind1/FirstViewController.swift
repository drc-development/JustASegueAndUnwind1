//
//  FirstViewController.swift
//  JustASegueAndUnwind1
//
//  Created by Daryl Cox on 8/16/24.
//

import Foundation
import UIKit

class FirstViewController: UIViewController
{
    
    @IBOutlet weak var textFieldLastName:UITextField!
    @IBOutlet weak var labelFirstName:UILabel!
    
    var firstname:String? = nil
    
    override func viewDidLoad() 
    {
        
        super.viewDidLoad()
        
        labelFirstName.text = "Firstmame: \(self.firstname ?? "")"
        
    }   // End of viewDidLoad().
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) 
    {
        
        guard let LandingVC = segue.destination as? LandingPageViewController else { return }
        
        if let firstname = firstname, let lastname = textFieldLastName.text
        {
            
            LandingVC.fullname = "\(firstname) \(lastname)"
            
        }
        
    }   // End of override func prepare(for segue: sender:).
    
}   // End of class FirstViewController(UIViewController).
