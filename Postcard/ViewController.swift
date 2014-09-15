//
//  ViewController.swift
//  Postcard
//
//  Created by Miguel Olmedo Camacho on 11/9/14.
//  Copyright (c) 2014 Jumtech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel:            UILabel!
    @IBOutlet weak var enterNameTextField:      UITextField!
    @IBOutlet weak var enterAMessageTextField:  UITextField!
    @IBOutlet weak var mailButton:              UIButton!
    
    // MARK: - VC life cycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    // MARK: - Button actions
    
    @IBAction func sendMailButtonPressed(sender: UIButton)
    {
        messageLabel.hidden = false
        messageLabel.text = enterAMessageTextField.text
        enterAMessageTextField.text = ""
        enterAMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: .Normal)
    }
}

