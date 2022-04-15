//
//  ProfileTableModel.swift
//  one-lab-hw-1-task2
//
//  Created by aya on 15.04.2022.
//

import Foundation

class ProfileTableModel {
    let labelText: String
    let type: ProfileTableModelType
    
    init (labelText: String, type: ProfileTableModelType ){
        self.labelText = labelText
        self.type = type
    }
}

enum ProfileTableModelType
{
    case navigation, switching, exiting
}
