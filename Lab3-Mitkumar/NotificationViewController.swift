//
//  NotificationViewController.swift
//  Lab3-Mitkumar
//
//  Created by user215540 on 3/11/22.
//

import UIKit

class NotificationViewController: UIViewController {

    @IBOutlet weak var btnClose: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnClose.addTarget(self, action: #selector(tapOnButtonForNavigation), for: .touchUpInside)
       
    }
    

    @objc func tapOnSignIn() {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "ProfileController") as!
        ProfileViewController
        self.present(controller, animated: true, completion: nil)
    }
    
    @objc func tapOnButtonForNavigation() {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "ProfileController") as!
        ProfileViewController
        let navigation = UINavigationController(rootViewController: controller)
        self.view.addSubview(navigation.view)
        self.addChild(navigation)
        navigation.didMove(toParent: self)
    }

}
