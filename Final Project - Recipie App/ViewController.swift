//
//  ViewController.swift
//  Final Project - Recipie App
//
//  Created by Andrew on 4/18/19.
//  Copyright © 2019 Andrew Evangelista. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var recipe = Recipes()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
     
        recipe.getRecipes{
            self.tableView.reloadData()
        }
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "recipeDetail" {
            let destination = segue.destination as! DetailViewController
            let index = tableView.indexPathForSelectedRow!.row
            destination.recipeName = recipe.recipeArray[index].name
            destination.recipeExternalURL = recipe.recipeArray[index].sourceurl
            destination.recipePub = recipe.recipeArray[index].publisher
            destination.recipeRank = recipe.recipeArray[index].socialRank
            destination.recipeImageFetcher = recipe.recipeArray[index].imageurl
        }
    }
    

    
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipe.recipeArray.count
}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = recipe.recipeArray[indexPath.row].name
    return cell
}
}
