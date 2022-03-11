//
//  ViewController.swift
//  Lab3-Mitkumar
//
//  Created by user215540 on 3/10/22.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

     private let skView = SKView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
        if let walkthroughViewController = storyboard.instantiateViewController(withIdentifier: "WalkthroughViewController") as? WalkthroughViewController {
            present(walkthroughViewController, animated: true, completion: nil)
        }
    }
}

