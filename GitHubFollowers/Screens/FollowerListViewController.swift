//
//  FollowerListViewController.swift
//  GitHubFollowers
//
//  Created by Tyler Bobella on 1/28/21.
//

import UIKit

class FollowerListViewController: UIViewController {
    
    var username: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // On swipe back, the navigation bar will not disappear if transaction is not completed
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
