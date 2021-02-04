//
//  User.swift
//  GitHubFollowers
//
//  Created by Tyler Bobella on 2/3/21.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGist: Int
    var htmlUrl: String
    var followers: Int
    var following: Int
    var createdAt: String
}
