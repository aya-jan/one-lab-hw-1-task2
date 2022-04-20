//
//  Storage.swift
//  one-lab-hw-1-task2
//
//  Created by aya on 15.04.2022.
//

import Foundation

class Storage {
    static let shared = Storage ()
    
    var user = UserModel(name: "Мария", surname: "Атрисова", email: "maria.atrisova@gmail.com", photo: "Rectangle 799")
    
    var profileTableItems =
    [ProfileTableModel(labelText: "Push уведомления", type: .switching),
     ProfileTableModel(labelText: "Изменить пароль", type: .navigation),
     ProfileTableModel(labelText: "Изменить код быстрого доступа", type: .navigation),
     ProfileTableModel(labelText: "Вход с Face/Touch ID", type: .switching),
     ProfileTableModel(labelText: "Изменить номер телефона", type: .navigation),
     ProfileTableModel(labelText: "Выход", type: .exiting),
    ]
}
