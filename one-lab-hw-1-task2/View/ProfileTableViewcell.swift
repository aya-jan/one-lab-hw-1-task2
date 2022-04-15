//
//  ProfileTableViewcell.swift
//  one-lab-hw-1-task2
//
//  Created by aya on 15.04.2022.
//

import Foundation
import SnapKit
import UIKit

class ProfileTableViewCell : UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: ProfileTableViewCell.identifier)
        }
    
    required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    static let identifier = "ProfileTableViewCell"
    
    var label: UILabel!
    
    var profileSwitch: UISwitch!
    
    var navigationItem: UINavigationItem!
    
    func configure (with tableModel : ProfileTableModel){
        
          label = {
            let label = UILabel()
            label.text = tableModel.labelText
            return label
        }()
        
        self.contentView.addSubview(label)
        label.snp.makeConstraints{
            $0.leading.equalToSuperview().offset(10)
            $0.centerY.equalToSuperview()
        }
        switch tableModel.type{
        case .navigation:
            
            break
            
        case .switching:
            profileSwitch = {
                 let profileSwitch = UISwitch()
                 label.text = tableModel.labelText
                 return profileSwitch
             }()
            self.contentView.addSubview(profileSwitch)
            profileSwitch.snp.makeConstraints{
                $0.trailing.equalToSuperview().offset(-10)
                $0.centerY.equalToSuperview()
            }
            break
            
        case .exiting:
            
            break
        }
        
    }
}
