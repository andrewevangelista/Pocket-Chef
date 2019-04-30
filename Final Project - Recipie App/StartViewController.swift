//
//  StartViewController.swift
//  Final Project - Recipie App
//
//  Created by Andrew on 4/28/19.
//  Copyright © 2019 Andrew Evangelista. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

   
    @IBOutlet weak var startImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startImage.image = UIImage(named: "pocketcheficon")
      
    }
    

    @IBAction func tap(_ sender: Any) {
        self .performSegue(withIdentifier: "open", sender: self)
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
