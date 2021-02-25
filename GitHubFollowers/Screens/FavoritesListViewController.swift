//
//  FavoritesListViewController.swift
//  GitHubFollowers
//
//  Created by Tyler Bobella on 1/6/21.
//

import UIKit

class FavoritesListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        PersistenceManager.retrieveFavorites { (result) in
            switch result {
            case .success(let favorties):
                print(favorties)
                break
            case .failure(let error):
                break
            }
        }
    }
}
