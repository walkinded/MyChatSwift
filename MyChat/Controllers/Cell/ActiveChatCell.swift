//
//  ActiveChatCell.swift
//  MyChat
//
//  Created by Роман Лабунский on 01/04/2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//

import UIKit


class ActiveChatCell: UICollectionViewCell, SelfConfiguringCell {
    
    static var resumeId: String = "ActiveChatCell"
    
    let friendImageView = UIImageView()
    let friendName = UILabel(text: "User name", font: .laoSangamMN20())
    let lastMessage = UILabel(text: "Last message", font: .laoSangamMN18())
    let gradientView = GradientView(from: .topTrailing, to: .topLeading, startColor: #colorLiteral(red: 0.7882352941, green: 0.631372549, blue: 0.9411764706, alpha: 1), endColor: #colorLiteral(red: 0.4784313725, green: 0.6980392157, blue: 0.9215686275, alpha: 1))
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        self.layer.cornerRadius = 4
        self.clipsToBounds = true
        
        setupeConstraints()
    }
    
    func configure(with value: MChat) {
        friendImageView.image = UIImage(named: value.userImageString)
        friendName.text = value.username
        lastMessage.text = value.lastMessage
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


// MARK: - Setup constraints
extension ActiveChatCell {
    
    private func setupeConstraints() {
           friendImageView.translatesAutoresizingMaskIntoConstraints = false
           friendName.translatesAutoresizingMaskIntoConstraints = false
           lastMessage.translatesAutoresizingMaskIntoConstraints = false
           gradientView.translatesAutoresizingMaskIntoConstraints = false
           
           friendImageView.backgroundColor = .black
           gradientView.backgroundColor = .orange
           
           addSubview(friendImageView)
           addSubview(gradientView)
           addSubview(friendName)
           addSubview(lastMessage)
           
           // Constraint fot friendImageView
           NSLayoutConstraint.activate([
               friendImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
               friendImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
               friendImageView.heightAnchor.constraint(equalToConstant: 78),
               friendImageView.widthAnchor.constraint(equalToConstant: 78)
           ])
           
           // Constraint fot friendImageView
           NSLayoutConstraint.activate([
               gradientView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
               gradientView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
               gradientView.heightAnchor.constraint(equalToConstant: 78),
               gradientView.widthAnchor.constraint(equalToConstant: 8)
           ])
           
           // Constraint fot friendName
           NSLayoutConstraint.activate([
               friendName.topAnchor.constraint(equalTo: self.topAnchor, constant: 12),
               friendName.leadingAnchor.constraint(equalTo: friendImageView.trailingAnchor, constant: 16),
               friendName.trailingAnchor.constraint(equalTo: gradientView.leadingAnchor, constant: 16)
           ])
           
           // Constraint fot friendName
           NSLayoutConstraint.activate([
              lastMessage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -14),
              lastMessage.leadingAnchor.constraint(equalTo: friendImageView.trailingAnchor, constant: 16),
              lastMessage.trailingAnchor.constraint(equalTo: gradientView.leadingAnchor, constant: 16)
          ])
       }
}
