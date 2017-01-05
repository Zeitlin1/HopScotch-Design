//
//  Feed.swift
//  Hopscotch-iOS-Test
//
//  Created by Anthony on 1/4/17.
//  Copyright © 2017 Samantha John. All rights reserved.
//

import Foundation
import UIKit

class Feed {
    
    var title: String?
    
    var id: Int = 0
    
    var author: String?
    
    var heartsCount: Int = 0
    
    var screenshotURL: String?
    
    var createdAt: String
    
    var updatedAt: String?
    

    init(feed: [String: Any]) {
        
        title = feed["title"] as! String?
        
        id = feed["id"] as! Int
        
        author = feed["author"] as! String?
        
        heartsCount = feed["hearts_count"] as! Int
        
        screenshotURL = feed["screenshot_url"] as! String?
        
        createdAt = feed["created_at"] as! String
        
        updatedAt = feed["updated_at"] as! String?
        
    }
}
