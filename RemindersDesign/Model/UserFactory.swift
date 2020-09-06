//
//  UserFactory.swift
//  RemindersDesign
//
//  Created by Merouane Bellaha on 06/09/2020.
//  Copyright © 2020 Merouane Bellaha. All rights reserved.
//

import Foundation

struct UserFactory {
    var name: String = ""
    var profilePicture: String = ""

    var users: [UserFactory] { [UserFactory(name: "PA", profilePicture: "pp1"),
                         UserFactory(name: "NP", profilePicture: "pp2"),
                         UserFactory(name: "UQ", profilePicture: "pp3"),
                         UserFactory(name: "OC", profilePicture: "pp4"),
                         UserFactory(name: "NB", profilePicture: "pp5"),
                         UserFactory(name: "PJ", profilePicture: "pp6")]}

    var usersProfilePictures: [String] { users.map { $0.profilePicture }}
    var usersName: [String] { users.map { $0.name }}
}
