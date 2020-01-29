//
//  MypageSettingViewController.swift
//  ModelClass9
//
//  Created by Noishiki Tatsunori on 2020/01/27.
//  Copyright © 2020 Noishiki Tatsunori. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class MypageSettingViewController: BaseViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func touchedDane(_ sender: UIButton) {
        UserModel.update(request: myself) {
            self.dismiss(animated: true, completion: nil)
        }
            
    }
    var myself: UserModel = UserModel()
}

// MARK: - Life cycle
extension MypageSettingViewController {
    override func loadView() {
        super.loadView()
        setTextField()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension MypageSettingViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField.tag {
        case 0:
            myself.mail = textField.text
        case 1:
            myself.password = textField.text
        default:
            break
        }
        return true
    }
}

// MARK: - method
extension MypageSettingViewController {
    func setTextField() {
        emailTextField.delegate = self
        passwordTextField.delegate = self
        emailTextField.text = myself.mail
        passwordTextField.text = myself.password
    }
}

