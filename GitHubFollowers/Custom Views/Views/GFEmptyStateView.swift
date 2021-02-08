//
//  GFEmptyStateView.swift
//  GitHubFollowers
//
//  Created by Tyler Bobella on 2/7/21.
//

import UIKit

class GFEmptyStateView: UIView {
    
    let EMPTY_STATE_LOGO = "empty-state-logo"
    let messageLabel = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoImageView = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(message: String) {
        super.init(frame: .zero)
        messageLabel.text = message
        configure()
    }
    
    private func configure() {
        addSubview(messageLabel)
        addSubview(logoImageView)
        
        // additional customization that should live here rather than passed as args
        messageLabel.numberOfLines = 3
        messageLabel.textColor = .secondaryLabel
        
        logoImageView.image = UIImage(named: EMPTY_STATE_LOGO)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let padding: CGFloat = 40
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -150),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            messageLabel.heightAnchor.constraint(equalToConstant: 200),
            
            // Make height&width 30%(1.3x) larger that the screen
            logoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            // We want to push the image to the right instead of the left padding
            logoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 170),
            // Push the image down
            logoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: padding)
            
        ])
        
    }
}
