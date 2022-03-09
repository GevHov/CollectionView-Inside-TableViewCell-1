//
//  ExampleCollectionViewCell.swift
//  CollectionViewCellInsideTableViewExample
//
//  Created by Gevorg Hovhannisyan on 5/15/21.
//  Copyright © 2021 Gevorg Hovhannisyan. All rights reserved.
//

    
import UIKit

class ExampleCollectionViewCell: UICollectionViewCell {
    
    // ID
    static let id = "ExampleCollectionViewCell"
    
    
    // MARK: - IBOutelts
    @IBOutlet weak var mainLabel: UILabel!
    
    // LifeCycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
