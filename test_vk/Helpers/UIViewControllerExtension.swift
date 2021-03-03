//
//  UIViewControllerExtension.swift
//  test_vk
//
//  Created by Igor Lavrynenko on 26.02.2021.
//

import UIKit

extension UIViewController {
    
    func loginErrorAlert(msg: String) {
        let alert = UIAlertController(title: "Error", message: msg, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}
