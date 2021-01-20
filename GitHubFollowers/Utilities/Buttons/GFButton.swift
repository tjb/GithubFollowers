//
//  GFButton.swift
//  GitHubFollowers
//
//  Created by Tyler Bobella on 1/20/21.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    // Called when initialized by the storyboard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // custom initializer to pass in color
    init(backgroundColor: UIColor, title: String) {
        // put frame to zero because we will set the frame dimensions with auto layout
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
        
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false

        layer.cornerRadius = 10
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
    }
    
}
