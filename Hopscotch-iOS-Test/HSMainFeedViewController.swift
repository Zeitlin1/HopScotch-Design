//
//  HSMainFeedViewController.swift
//  Hopscotch-iOS-Test
//
//  Created by Anthony on 1/4/17.
//  Copyright © 2017 Samantha John. All rights reserved.
//

import Foundation
import UIKit

class HSMainFeedViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var dataStore: DataStore!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.dataStore = DataStore.shared
        
        dataStore.getFeedDataFromApi {
            
            DispatchQueue.main.async {
                
                self.collectionView.reloadData()
                
            }
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return dataStore.hopScotchFeeds.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        CollectionViewCell.configureCellText(configCell: cell)
        
        let libraryLookup = dataStore.dataStoreLibrary[indexPath.row]
        
        cell.titleLabel.text = dataStore.hopScotchFeeds[libraryLookup]?.title
        
        cell.userLabel.text = dataStore.hopScotchFeeds[libraryLookup]?.author

        if let imageURL = dataStore.hopScotchFeeds[libraryLookup]?.screenshotURL {
            
            HopScotchAPI.downloadImage(from: imageURL) { (success, image) in
            
                DispatchQueue.main.async {
              
                    if success {

                        cell.imageView.image = image
                        
                    }
                }
            }
        }
        return cell
    }
        
        
    
}
