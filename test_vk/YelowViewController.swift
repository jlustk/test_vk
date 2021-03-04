//
//  YelowViewController.swift
//  test_vk
//
//  Created by Igor Lavrynenko on 26.02.2021.
//

import UIKit

class YelowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(self, #function)
    }
    
    // MARK: - Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(self, #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(self, #function)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(self, #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(self, #function)
    }

}
