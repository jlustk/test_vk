//
//  LoginViewController.swift
//  test_vk
//
//  Created by Igor Lavrynenko on 16.02.2021.
//  first lesson

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginName: UITextField!
    @IBOutlet weak var passUser: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    
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
    
    // MARK: - Tap
    
    @IBAction func scrollTapped(_ sender: UITapGestureRecognizer) {
        print(#function)
        view.endEditing(true)
    }
    
    // MARK: - Segues
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "SuccessLoginVk" {
            print("ok")
            let login = validLogin()
            if !login {
                loginErrorAlert(msg: "access denied")
            }
            return login
        }
        return false
    }
    
    func validLogin() -> Bool {
        return loginName.text == "test" && passUser.text == "123"
    }
    
}
