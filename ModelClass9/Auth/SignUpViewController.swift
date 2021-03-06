//
//  SignUpViewController.swift
//  ModelClass9
//
//  Created by Noishiki Tatsunori on 2020/01/27.
//  Copyright © 2020 Noishiki Tatsunori. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class SignUpViewController: BaseViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBAction func touchedSignUp(_ sender: UIButton) {
        userModel.mail = emailTextField.text
        userModel.password = passTextField.text
        UserModel.create(request: userModel, success: {
            
            let vc = MypageViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            self.animatorManager.navigationType = .slide_push
            
        }) { (error) in
            print(error)
        }
    }
    @IBAction func touchedSignInButton(_ sender: UIButton) {
        let vc = SignInViewController()
        navigationController?.pushViewController(vc, animated: true)
        animatorManager.navigationType = .slide_push
    }
    var userModel: UserModel = UserModel()
}

// MARK: - Life cycle
extension SignUpViewController {
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension SignUpViewController {
    
}

// MARK: - method
extension SignUpViewController {
    
}

