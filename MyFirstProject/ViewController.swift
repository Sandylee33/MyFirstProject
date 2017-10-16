//
//  ViewController.swift
//  MyFirstProject
//
//  Created by Haoyu Li on 2017-10-08.
//  Copyright © 2017 Haoyu Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func didTapLoad(_ sender: UIButton) {
        if let text = myTextField.text{
            if text == "" {
                return
            }
            myTextView.text.append("\(text)\n")
            myTextField.text = ""
            myTextField.resignFirstResponder()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

