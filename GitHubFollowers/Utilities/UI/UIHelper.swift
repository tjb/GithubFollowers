//
//  UIHelper.swift
//  GitHubFollowers
//
//  Created by Tyler Bobella on 2/6/21.
//

import UIKit

struct UIHelper {

    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
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
}
