//
//  FollowerListViewController.swift
//  GitHubFollowers
//
//  Created by Tyler Bobella on 1/28/21.
//

import UIKit

class FollowerListViewController: UIViewController {
    
    var username: String!
    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureCollectionView()
        getFollowers()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // On swipe back, the navigation bar will not disappear if transaction is not completed
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createThreeColumnFlowLayout())
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemPink
        collectionView.register(FollowerCell.self, forCellWithReuseIdentifier: FollowerCell.reuseID)
    }
    
    // Does my VC need to know about all this?
    // Hints: No access to global class functions so no
    // Thus we can refactor this out to a helper class!
    func createThreeColumnFlowLayout() -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let paddingForInsets: CGFloat = 12
        let minimumItemSpacing: CGFloat = 10
        let availableWidth = width - (paddingForInsets * 2) - (minimumItemSpacing * 2)
        let itemWidth = availableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: paddingForInsets,
                                               left: paddingForInsets,
                                               bottom: paddingForInsets,
                                               right: paddingForInsets)
        // we +40 on the hight to give us some extra room for the label
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        
        return flowLayout
    }
    
    func configureViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func getFollowers() {
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            switch result {
            case .success(let followers):
                print("Followers.count = \(followers.count)")

            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Oh no, an error occured!",
                                                message: error.rawValue,
                                                buttonTitle: "Ok")
            }
        }
    }
}
