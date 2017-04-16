//
//  ZipCodeTextFieldDelegate.swift
//  TextFieldsChallenge
//
//  Created by Emanuel Del Castillo on 4/13/17.
//  Copyright © 2017 Emanuel Del Castillo. All rights reserved.
//

import UIKit

class ZipCodeTextFieldDelegate : NSObject, UITextFieldDelegate {
  
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    
    var zipCode = textField.text! as NSString
        zipCode = zipCode.replacingCharacters(in: range, with: string) as NSString
    
    while zipCode.length < 6 {
      if let _ = Int(string) {
        return true
      }
      
      return false
    }
      
    return false
  }
}
