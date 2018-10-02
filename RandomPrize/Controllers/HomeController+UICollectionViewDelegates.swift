//
//  HomeController+UICollectionViewDelegates.swift
//  RandomPrize
//
//  Created by Haamed Sultani on 10/1/18.
//  Copyright © 2018 Sultani. All rights reserved.
//

import UIKit


private let cellId = "cellId"


extension HomeController {
    
    // Number of cell
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    // Configuring the cell
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PrizeCollectionViewCell
        
        cell.prizeIndex = indexPath.row
        
        return cell
    }
    
    // Setting the size of each cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    // This delegate method is called whenever you flip the phone to its side
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: { (_) in
            self.collectionViewLayout.invalidateLayout() // Force the app to redraw the view when we flip the phone
            
        }) { (_) in
        }
    }
}
