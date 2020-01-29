//
//  MypageViewController.swift
//  ModelClass9
//
//  Created by Noishiki Tatsunori on 2020/01/27.
//  Copyright © 2020 Noishiki Tatsunori. All rights reserved.
//

import UIKit
import PGFramework
import FirebaseAuth


// MARK: - Property
class MypageViewController: BaseViewController {
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBAction func touchedEditButton(_ sender: UIButton) {
        let vc = MypageSettingViewController()
        vc.myself = self.myself
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    var myself: UserModel = UserModel()
}

// MARK: - Life cycle
extension MypageViewController {
    override func loadView() {
        super.loadView()
        UserModel.readMe { (myself) in
            self .myself = myself
            self.emailLabel.text = myself.mail
            self.passwordLabel.text = myself.password
        }
        if Auth.auth().currentUser?.uid == nil {
            let vc = SignUpViewController()
            navigationController?.pushViewController(vc, animated: false)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension MypageViewController {
    
}

// MARK: - method
extension MypageViewController {
    
}

