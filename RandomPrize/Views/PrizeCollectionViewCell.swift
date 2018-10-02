//
//  PrizeCollectionViewCell.swift
//  RandomPrize
//
//  Created by Haamed Sultani on 10/1/18.
//  Copyright © 2018 Sultani. All rights reserved.
//

import UIKit

class PrizeCollectionViewCell: UICollectionViewCell {
    
    var prizeIndex: Int? {
        didSet {
            topContainer.prizeTitleTextView.text = "Prize \(prizeIndex!+1)"
            topContainer.prizeImageview.image = UIImage(named: "toys_retro_0\(prizeIndex!+1)")
        }
    }
    
    var topContainer: TopContainer = TopContainer()
    var bottomContainer: BottomContainer = BottomContainer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupViews() {
        topContainer.translatesAutoresizingMaskIntoConstraints = false
        bottomContainer.translatesAutoresizingMaskIntoConstraints = false
        addSubview(topContainer)
        addSubview(bottomContainer)
        
        NSLayoutConstraint.activate([
            topContainer.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            topContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            topContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            topContainer.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7)
            ])
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: bottomContainer, attribute: .top, relatedBy: .equal, toItem: topContainer, attribute: .bottom, multiplier: 1, constant: 0),
            bottomContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            bottomContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            bottomContainer.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
            ])
        
    }
}
