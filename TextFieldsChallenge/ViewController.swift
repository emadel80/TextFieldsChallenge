//
//  ViewController.swift
//  TextFieldsChallenge
//
//  Created by Emanuel Del Castillo on 4/13/17.
//  Copyright © 2017 Emanuel Del Castillo. All rights reserved.
//

import UIKit

// MARK: ViewController : UIViewController, UITextFieldDelegate -
class ViewController: UIViewController, UITextFieldDelegate {

  // MARK: - Outlets -
  @IBOutlet weak var zipCodeTextField:  UITextField!
  @IBOutlet weak var cashTextField:     UITextField!
  @IBOutlet weak var lockableTextField: UITextField!
  @IBOutlet weak var lockableSwitch:    UISwitch!
  
  // MARK: - Text Field Delegate Objects -
  let zipCodeTextFieldDelegate = ZipCodeTextFieldDelegate()
  let cashTextFieldDelegate    = CashTextFieldDelegate()
  
  // MARK: - Life Cycle -
  override func viewDidLoad() {
    super.viewDidLoad()
    
    zipCodeTextField.delegate  = zipCodeTextFieldDelegate
    cashTextField.delegate     = cashTextFieldDelegate
    lockableTextField.delegate = self
  }
  
  // MARK: - Text Field Delegate Methods -
}

