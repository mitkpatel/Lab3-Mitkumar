//
//  ProfileViewController.swift
//  Lab3-Mitkumar
//
//  Created by user215540 on 3/11/22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var btnSetting: UIButton!
    
    @objc func tapOnSignIn() {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "NotificationController") as!
        NotificationViewController
        self.present(controller, animated: true, completion: nil)
    }
    
    @objc func tapOnButtonForNavigation() {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "NotificationController") as!
        NotificationViewController
        let navigation = UINavigationController(rootViewController: controller)
        self.view.addSubview(navigation.view)
        self.addChild(navigation)
        navigation.didMove(toParent: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnSetting.addTarget(self, action: #selector(tapOnButtonForNavigation), for: .touchUpInside)
       
    }
    
}
