//
//  cashTextFieldDelegate.swift
//  TextFieldsChallenge
//
//  Created by Emanuel Del Castillo on 4/13/17.
//  Copyright © 2017 Emanuel Del Castillo. All rights reserved.
//

import UIKit

class CashTextFieldDelegate : NSObject, UITextFieldDelegate {
  
  var cents : Int?
  var cash  : String?
  
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    
    let text      = textField.text! as NSString
        cash      = text.replacingCharacters(in: range, with: string)
    let centsText = parseCashString()
    
    if let cents  = Int(centsText) {
      self.cents = cents
    }
    else {
      self.cents = 0
    }
    
    formatCashString()
    textField.text = cash
    
    return false
  }
  
  func parseCashString() -> String {
    let digits  = CharacterSet.decimalDigits
    var pennies = ""
    
    for scalar in (cash?.unicodeScalars)! {
      if digits.contains(UnicodeScalar(scalar.value)!) {
        pennies.append("\(scalar)")
      }
    }
    
    return pennies
  }
  
  func formatCashString() {
    if self.cents == 0 {
      cash = "$0.00"
      
      return
    }
    
        cash   = "$\((self.cents)! / 100)."
    let cents  =     (self.cents)! % 100
        cash! += cents < 10 ? "0\(cents)" : "\(cents)"
  
  }
  
  func textFieldDidBeginEditing(_ textField: UITextField) {
    if (textField.text?.isEmpty)! {
      textField.text = "$0.00"
    }
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    
    return true
  }
}
