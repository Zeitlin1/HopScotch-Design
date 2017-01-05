//
//  DataStore.swift
//  Hopscotch-iOS-Test
//
//  Created by Anthony on 1/4/17.
//  Copyright © 2017 Samantha John. All rights reserved.
//

import Foundation
import UIKit

class DataStore {
    
    static let shared = DataStore()
    
    var hopScotchFeeds = [String: Feed]()
    
    var dataStoreLibrary = [String]()
    
    private init(){}
    
    func getFeedDataFromApi(_ completion: @escaping () -> Void) {
    
        HopScotchAPI.getFeedData { (Dictionary) in
            
            if let projects = Dictionary["projects"] as? [[String: Any]] {
          
                for feedReturn in projects {
                  
                    var newFeed = (String(), Feed(feed: feedReturn))
                   
                    newFeed.0 = newFeed.1.createdAt
                    
                    self.hopScotchFeeds[newFeed.0] = newFeed.1
                    
                    self.dataStoreLibrary.append(newFeed.0)
                    
                }
            }
         completion()
        }
    }
    
}

