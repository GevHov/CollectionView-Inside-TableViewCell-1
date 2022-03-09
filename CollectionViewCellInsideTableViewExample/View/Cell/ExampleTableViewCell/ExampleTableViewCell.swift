//
//  ExampleTableViewCell.swift
//  CollectionViewCellInsideTableViewExample
//
//  Created by Gevorg Hovhannisyan on 5/15/21.
//  Copyright © 2021 Gevorg Hovhannisyan. All rights reserved.
//

import UIKit

class ExampleTableViewCell: UITableViewCell {

    // ID
    static let id = "ExampleTableViewCell"
    
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    // MARK: - LifeCycle Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        NotificationCenter.default.addObserver(self, selector: #selector(rotated), name: UIDevice.orientationDidChangeNotification, object: nil)

        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        // Register Cell
        collectionView.register(UINib(nibName: ExampleCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: ExampleCollectionViewCell.id)
    }
    
    @objc func rotated() {
          if UIDevice.current.orientation.isLandscape {
              collectionView.collectionViewLayout.invalidateLayout()
          } else {
              collectionView.collectionViewLayout.invalidateLayout()
          }
      }
    
}

// MARK: - Extensions
extension ExampleTableViewCell: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width / 2, height: self.collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ExampleCollectionViewCell.id, for: indexPath) as! ExampleCollectionViewCell
        
        cell.mainLabel.text = "\(indexPath.item)"
        return cell
    }

}
