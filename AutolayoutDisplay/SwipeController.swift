//
//  SwipeController.swift
//  AutolayoutDisplay
//
//  Created by Page Kallop on 2/17/21.
//

import Foundation
import  UIKit


class SwipeController: UICollectionViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
        
        collectionView?.backgroundColor = .purple
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        cell.backgroundColor = .purple
        return cell 
    }
}
