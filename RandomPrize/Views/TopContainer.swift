//
//  TopContainer.swift
//  RandomPrize
//
//  Created by Haamed Sultani on 10/1/18.
//  Copyright © 2018 Sultani. All rights reserved.
//

import UIKit

class TopContainer: UIView {

    var prizeTitleTextView : UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Prize 0"
        textView.textAlignment = .center
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.layer.cornerRadius = 3
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.white.cgColor
        
        return textView
    }()
    
    
    var prizeImageview: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "toys_retro_01")
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .white
        imageView.layer.cornerRadius = 3
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.white.cgColor
        
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    func setupView(){
        addSubview(prizeTitleTextView)
        addSubview(prizeImageview)

        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: prizeTitleTextView, attribute: .bottom, relatedBy: .equal, toItem: prizeImageview, attribute: .top, multiplier: 1, constant: -15),
            prizeTitleTextView.widthAnchor.constraint(equalToConstant: 150),
            prizeTitleTextView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            prizeTitleTextView.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        NSLayoutConstraint.activate([
            prizeImageview.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50),
            prizeImageview.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            prizeImageview.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.50),
            prizeImageview.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.50)
            ])
    }
}
