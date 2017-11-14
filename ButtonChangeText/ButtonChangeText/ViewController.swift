//
//  ViewController.swift
//  ButtonChangeText
//
//  Created by Cyberjaya 15 iTrain on 13/11/2017.
//  Copyright © 2017 Hidayah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet var myLabel: UILabel!
    
    @IBOutlet var txt_username: UITextField!
    
    @IBOutlet var txt_password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        txt_username.delegate = self
        
        txt_password.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeLabelText(_ sender: Any) {
        
        print("Clicking on the button")
        print("Username is \(txt_username.text)")
        print("Password is \(txt_password.text)")
        myLabel.text = "Hello" + txt_username.text!
        
        //Hide keyboard
        self.view.endEditing(true)
        
        if self.txt_password.text == "123456"{
        
        //Alert Msg Box
        let myAlert = UIAlertController(title: "Success", message: "Welcome", preferredStyle: .alert)
        
        
        ////
        //Add a button to this Alert Msg Box
        let myAlertButton1 = UIAlertAction(title:"Okay", style: .default, handler:nil)
        
        //Add this button to Msg Box
        myAlert.addAction(myAlertButton1)
        /////
        
        
        //Pop this Msg Box to user
        present(myAlert, animated: true, completion: nil)
        
        }
        
        else{
            
            let myAlert = UIAlertController(title: "My Title", message: "My Msg", preferredStyle: .alert)
            
            
            ////
            //Add a button to this Alert Msg Box
            let myAlertButton1 = UIAlertAction(title:"Okay", style: .default, handler:nil)
            
            //Add this button to Msg Box
            myAlert.addAction(myAlertButton1)
            /////
            
            //Pop this Msg Box to user
            present(myAlert, animated: true, completion: nil)
            
            
        }
        
        
    }
    
    //This is from textfield delegate method
    //This is from user click on Return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //
        return textField.resignFirstResponder()
    }
    
    
    @IBAction func multipleOptions(_ sender: Any) {
        
        let myOptions = UIAlertController(title: "My Options", message: "Select", preferredStyle: .actionSheet)
        
        
        //Add Waze button to this Alert Msg Box
        let myButtonWaze = UIAlertAction(title:"Open w Waze", style: .default, handler:nil)
        
        //Add this button to Msg Box
        myOptions.addAction(myButtonWaze)
       
        //Add Google button to this Alert Msg Box
        let myButtonGoogle = UIAlertAction(title:"Open w Google", style: .default, handler:nil)
        
        //Add this button to Msg Box
        myOptions.addAction(myButtonGoogle)
        
        //Add Cancel button to this Alert Msg Box
        let myButtonCancel = UIAlertAction(title:"Cancel", style: .cancel, handler:nil)
        
        //Add this button to Msg Box
        myOptions.addAction(myButtonCancel)
        
        //Pop this Msg Box to user
        present(myOptions, animated: true, completion: nil)
        
    }
    
}

