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
    
    @IBOutlet weak var btnSignIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnSignIn.addTarget(self, action: #selector(tapOnButtonForNavigation), for: .touchUpInside)
    }
    
    @objc func tapOnSignIn() {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "LoginController") as!
        LoginViewController
        self.present(controller, animated: true, completion: nil)
    }
    
    @objc func tapOnButtonForNavigation() {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "LoginController") as!
        LoginViewController
        let navigation = UINavigationController(rootViewController: controller)
        self.view.addSubview(navigation.view)
        self.addChild(navigation)
        navigation.didMove(toParent: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
        if let walkthroughViewController = storyboard.instantiateViewController(withIdentifier: "WalkthroughViewController") as? WalkthroughViewController {
            present(walkthroughViewController, animated: true, completion: nil)
        }
    }
}

