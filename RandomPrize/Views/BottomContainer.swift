//
//  BottomContainer.swift
//  RandomPrize
//
//  Created by Haamed Sultani on 10/1/18.
//  Copyright © 2018 Sultani. All rights reserved.
//

import UIKit

class BottomContainer: UIView {
    
    var randomButton: UIButton = {
        var button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Random", for: .normal)
        button.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        button.layer.cornerRadius = 3
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.black, for: .highlighted)
        button.addTarget(self, action: #selector(HomeController.buttonPressed), for: .touchUpInside)
        
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupViews(){
        addSubview(randomButton)
        
        NSLayoutConstraint.activate([
            randomButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.60),
            randomButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5),
            randomButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            randomButton.centerYAnchor.constraint(equalTo: self.centerYAnchor)
            ])
    }
    
}
