//
//  ViewController.swift
//  TECHNIFUTUR-IOS-FILROUGE
//
//  Created by Student06 on 05/07/2022.
//

import UIKit

class ViewController: UIViewController
{
    // Objects reference
    @IBOutlet var enterEmailTextField: UITextField!
    @IBOutlet var enterPasswordTextField: UITextField!
    @IBOutlet var stackofMailAndPswd: UIStackView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Close Keyboard
        let tapOnView = UITapGestureRecognizer(target: view, action:
        #selector(UIView.endEditing))
        view.addGestureRecognizer(tapOnView)
        
        enterEmailTextField.delegate = self
        enterPasswordTextField.delegate = self
    }

    // Objects functions
    @IBAction func connectButtonIsTouchUpIn(_ sender: Any)
    {
    }
    
}

extension ViewController: UITextFieldDelegate {
func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    view.endEditing(true)
    return true
}
}
