//
//  UserInfoViewController.swift
//  GitHubFollowers
//
//  Created by Tyler Bobella on 2/7/21.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        print(username)
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }

}
