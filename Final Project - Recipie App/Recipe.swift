//
//  Recipe.swift
//  Final Project - Recipie App
//
//  Created by Andrew on 4/28/19.
//  Copyright © 2019 Andrew Evangelista. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire







class Recipes {
    
  
    @IBOutlet weak var searchField: UITextField!
    
    
    struct recipeData {
        var name: String
        var imageurl: String
        var sourceurl: String
        var publisher: String
        var socialRank: String
    }
    

    
    
    var recipeArray: [recipeData] = []
    var recipeURL = "https://www.food2fork.com/api/search?key=93ea86909f3a9a01db9e563af660951b"
    
    
    func getRecipes(completed: @escaping () -> () ) {
        Alamofire.request(recipeURL).responseJSON {
            response in
            print("***JSON = \(response)")
            
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                for index in 0...30 {
                    let name = json["recipes"][index]["title"].stringValue
                    let imageurl = json["recipes"][index]["image_url"].stringValue
                    let sourceurl = json["recipes"][index]["source_url"].stringValue
                    let publisher = json["recipes"][index]["publisher"].stringValue
                    let socialRank = json["recipes"][index]["social_rank"].stringValue
                    self.recipeArray.append(recipeData(name: name, imageurl: imageurl, sourceurl: sourceurl, publisher: publisher, socialRank: socialRank))
                    print("\(index+1)")
                    print("\(name)")
                }
            case .failure(let error):
                print("ERROR: \(error)")
            }
            completed()
        }
    }
    
    
    
    
    
}



    
    


