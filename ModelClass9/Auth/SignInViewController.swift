//
//  SignInViewController.swift
//  ModelClass9
//
//  Created by Noishiki Tatsunori on 2020/01/27.
//  Copyright © 2020 Noishiki Tatsunori. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class SignInViewController: BaseViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBAction func touchedSignInButton(_ sender: UIButton) {
        UserModel.signIn(email: emailTextField.text ?? "", pass: passTextField.text ?? "", failure: { (error) in
            print(error)
        }) {
            
            let vc = MypageViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            self.animatorManager.navigationType = .slide_push
            
            print("成功")
        }
    }
    @IBAction func touchedSignUpButton(_ sender: UIButton) {
        let vc = SignUpViewController()
        navigationController?.pushViewController(vc, animated: true)
        animatorManager.navigationType = .slide_push
    }
    
}

// MARK: - Life cycle
extension SignInViewController {
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
extension SignInViewController {
    
}

// MARK: - method
extension SignInViewController {
    
}

