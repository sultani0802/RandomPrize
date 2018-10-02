//
//  ViewController.swift
//  RandomPrize
//
//  Created by Haamed Sultani on 10/1/18.
//  Copyright © 2018 Sultani. All rights reserved.
//

import UIKit

private let cellId = "cellId"

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .red
        collectionView.isPagingEnabled = true
        collectionView.register(PrizeCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        
    }
    
    
    @objc func buttonPressed() {
        let randomInt = Int.random(in: 0...5)
        print(randomInt)
        let indexPath = IndexPath(item: randomInt, section: 0)
        self.collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
}

