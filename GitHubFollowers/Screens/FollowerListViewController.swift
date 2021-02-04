//
//  FollowerListViewController.swift
//  GitHubFollowers
//
//  Created by Tyler Bobella on 1/28/21.
//

import UIKit

class FollowerListViewController: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { (followers, errorMsg) in
            guard let followers = followers else {
                self.presentGFAlertOnMainThread(title: "Bad Stuff Happened", message: errorMsg!, buttonTitle: "Ok")
                return
            }
            
            print("Followers.count = \(followers.count)")
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // On swipe back, the navigation bar will not disappear if transaction is not completed
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
