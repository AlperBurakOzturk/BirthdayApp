//
//  ViewController.swift
//  BirthdayApp
//
//  Created by Alper Burak Öztürk on 25.02.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var birthdayAppLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let savedName = UserDefaults.standard.object(forKey: "Name")
        let savedBirthday = UserDefaults.standard.object(forKey: "Birthday")
        
        if let newName = savedName as? String {
            nameLabel.text = "Name: \(newName)"
        }
        
        if let newBirthday = savedBirthday as? String {
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
        
    }
    
    @IBAction func saveClicked(_ sender: Any) {
        
        
        UserDefaults.standard.set(nameText.text!, forKey: "Name")
        UserDefaults.standard.set(birthdayText.text!, forKey: "Birthday")
        
        
        nameLabel.text = "Name: \(nameText.text!)"
        birthdayLabel.text = "Birthday: \(birthdayText.text!)"
        
        
       
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        let savedName = UserDefaults.standard.object(forKey: "Name")
        let savedBirthday = UserDefaults.standard.object(forKey: "Birthday")
        
        if (savedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "Name")
            nameLabel.text = "Name: "
        }
        
        if (savedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "Birthday")
            birthdayLabel.text = "Birthday: "
        }
        
    }
    


}

