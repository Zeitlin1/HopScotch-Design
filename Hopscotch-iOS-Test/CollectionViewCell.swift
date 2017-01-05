//
//  CollectionViewCell.swift
//  Hopscotch-iOS-Test
//
//  Created by Anthony on 1/4/17.
//  Copyright © 2017 Samantha John. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var userLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
    
    }

    class func configureCellText(configCell: CollectionViewCell) {
        
        let titleColor = UIColor(red: 77/255, green: 77/255, blue: 77/255, alpha: 1)
        
        let authorColor = UIColor(red: 155/255, green: 155/255, blue: 155/255, alpha: 1)
        
        let imageBorderColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1)
        
        configCell.titleLabel.textColor = titleColor
      
        configCell.userLabel.textColor = authorColor
        
        configCell.imageView.layer.borderColor = imageBorderColor.cgColor
        
        configCell.titleLabel.font = UIFont(name: "Avenir-Black", size: 18)
        
        configCell.userLabel.font = UIFont(name: "Avenir-Book", size: 18)

    }
}
