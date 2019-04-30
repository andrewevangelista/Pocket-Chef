//
//  DetailViewController.swift
//  Final Project - Recipie App
//
//  Created by Andrew on 4/29/19.
//  Copyright © 2019 Andrew Evangelista. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var recipeTitle: UILabel!
    
    @IBOutlet weak var recipeImage: UIImageView!
    
    @IBOutlet weak var recipeURL: UITextView!
    @IBOutlet weak var recipePublisher: UILabel!
    @IBOutlet weak var recipeRanking: UILabel!
    
    
    var recipeName: String?
    var recipeExternalURL: String?
    var recipeImageFetcher: String?
    var recipePub: String?
    var recipeRank: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let recipeName = recipeName {
            recipeTitle.text = recipeName
                    }
        if let recipeExternalURL = recipeExternalURL{
            recipeURL.text = recipeExternalURL
        }
        if let recipePub = recipePub{
            recipePublisher.text = recipePub
        }
        if let recipeRank = recipeRank {
            recipeRanking.text = recipeRank
        }
    }

    
    }

//
// let imageUrlString = recipeImageFetcher
//
//    let imageUrl = URL(string: imageUrlString)!
//
//    let imageData = try! Data(contentsOf: imageUrl)
//
//    let image = UIImage(data: imageData)
//}
//

