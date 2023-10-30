//
//  User.swift
//  AboutMeAppVersion1
//
//  Created by Elena Petrova on 08.10.2023.
//

struct Users {
    let user: String
    let password: String
    
    static var client: Users {
        Users (
            user: "Евгения",
            password: "123"
        )
    }
}
