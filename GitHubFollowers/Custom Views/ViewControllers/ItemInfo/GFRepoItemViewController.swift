//
//  GFRepoItemVC.swift
//  GitHubFollowers
//
//  Created by Tyler Bobella on 2/9/21.
//

import UIKit

// subclassing baby
class GFRepoItemViewController: GFItemInfoViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    override func actionButtonTapped() {
        // this will fire off the method definition in UserInfoViewController
        delegate.didTapGitHubProfile(for: user)
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "Github Profile")
    }
}
