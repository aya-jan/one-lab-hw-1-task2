//
//  UserModel.swift
//  one-lab-hw-1-task2
//
//  Created by aya on 15.04.2022.
//

import Foundation

class UserModel {
    let name : String
    let surname: String
    let email : String
    let photo: String
    
    init(name : String,surname: String, email : String, photo: String ){
        self.name = name
        self.surname = surname
        self.email = email
        self.photo = photo
    }
    
}
