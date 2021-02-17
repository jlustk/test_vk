//
//  LoginViewController.swift
//  test_vk
//
//  Created by Igor Lavrynenko on 16.02.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBAction func loginName(_ sender: Any) {
        print(sender)
    }
    @IBAction func passUser(_ sender: Any) {
        print(sender)
    }
    @IBOutlet weak var scrollView: UIScrollView!
    @IBAction func startBut(_ sender: Any) {
        print(#function)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @objc func keyboardWasShown(notification: Notification) {
            let info = notification.userInfo! as NSDictionary
            let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
            let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
            self.scrollView?.contentInset = contentInsets
            scrollView?.scrollIndicatorInsets = contentInsets
        }
        
        @objc func keyboardWillBeHidden(notification: Notification) {
            let contentInsets = UIEdgeInsets.zero
            scrollView?.contentInset = contentInsets
        }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        }

    override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        }
}
