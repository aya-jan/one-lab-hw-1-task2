//
//  ProfileTableHeader.swift
//  one-lab-hw-1-task2
//
//  Created by aya on 15.04.2022.
//

import Foundation
import UIKit

class ProfileTableHeader : UITableViewHeaderFooterView {
    
    static let identifier = "ProfileTableHeader"
    
    private let userImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.borderWidth = 1.0
        imageView.layer.masksToBounds = false
        imageView.layer.cornerRadius = imageView.frame.size.width/2
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let nameSurnameLabel: UILabel = {
        let label = UILabel()
        return label 
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    func configure (with usermodel : UserModel){
        
        userImageView.image = UIImage(named: usermodel.photo)
        nameSurnameLabel.text = usermodel.name + " " + usermodel.surname
        emailLabel.text = usermodel.email
        
        self.contentView.addSubview(userImageView)
        userImageView.snp.makeConstraints{
            $0.top.equalToSuperview().offset(20)
            $0.centerX.equalToSuperview()
        }
        self.contentView.addSubview(nameSurnameLabel)
        nameSurnameLabel.snp.makeConstraints{
            $0.top.equalTo(userImageView).offset(10)
            $0.centerX.equalToSuperview()
        }
        
        self.contentView.addSubview(emailLabel)
        emailLabel.snp.makeConstraints{
            $0.top.equalTo(nameSurnameLabel).offset(10)
            $0.centerX.equalToSuperview()
        }
        
    }
    
    override init(reuseIdentifier: String?){
        super.init(reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

