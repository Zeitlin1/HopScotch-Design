//
//  HopScotchAPI.swift
//  Hopscotch-iOS-Test
//
//  Created by Anthony on 1/4/17.
//  Copyright © 2017 Samantha John. All rights reserved.
//

import Foundation
import UIKit

struct HopScotchAPI {
    
    static func getFeedData(with completion: @escaping ([String: Any]) -> Void){

        let url = URL(string: "https://hopscotch-ios-test.herokuapp.com/projects")
        
        guard let unwrappedURL = url else { return }
            
            let session = URLSession.shared
            
            let task = session.dataTask(with: unwrappedURL) { (data, response, error) in
                
                if let unwrappedData = data {
                    
                    do {
                        
                        let responseJSON = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as! [String: Any]
                        
           
                        completion(responseJSON)
                        
                    } catch {
                        
                        print(error.localizedDescription)
                        
                    }
                }
            }
        
        task.resume()
        
    }
    
    
    static func downloadImage(from urlString: String, completion: @escaping(Bool, UIImage?) -> Void) {
        
        let url = URL(string: urlString)
        
        guard let unwrappedURL = url else { return }
        
        let request = URLRequest(url: unwrappedURL)
        
        let session = URLSession.shared
        
            let task = session.dataTask(with: request) { data, response, error in
                
                guard let data = data, let image = UIImage(data: data) else { completion(false, nil); return }
                
                completion(true, image)
                
            }
        
        task.resume()
        
    }

}











