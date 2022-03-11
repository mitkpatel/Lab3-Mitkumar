//
//  LoginViewController.swift
//  Lab3-Mitkumar
//
//  Created by user215540 on 3/11/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let bottomLineEmail = CALayer()
        let bottomLinePassword = CALayer()
        let emailIcon = UIImageView()
        let passwordIcon = UIImageView()
        let label = UILabel()
        label.text = "FORGOT"
        label.font = label.font.withSize(15)
        label.textColor = UIColor.white
        emailIcon.image = UIImage(named: "EmailIcon")
        passwordIcon.image = UIImage(named: "PasswordIcon")
        
        let contentView = UIView()
        let contentView1 = UIView()
        let contentView2 = UIView()
        contentView.addSubview(emailIcon)
        contentView1.addSubview(passwordIcon)
        contentView2.addSubview(label)
        
        contentView.frame = CGRect(x: 0, y: 0, width: UIImage(named: "EmailIcon")!.size.width + 12, height: UIImage(named: "EmailIcon")!.size.width)
        
        emailIcon.frame = CGRect(x: 5,y: 0, width: UIImage(named: "EmailIcon")!.size.width, height: UIImage(named: "EmailIcon")!.size.height )
        
        contentView1.frame = CGRect(x: 0, y: 0, width: UIImage(named: "PasswordIcon")!.size.width + 12, height: UIImage(named: "PasswordIcon")!.size.width)
        
        passwordIcon.frame = CGRect(x: 5,y: 0, width: UIImage(named: "PasswordIcon")!.size.width, height: UIImage(named: "PasswordIcon")!.size.height )
        
        
        contentView2.frame = CGRect(x: 0, y: 0, width: UIImage(named: "PasswordIcon")!.size.width + 20, height: UIImage(named: "PasswordIcon")!.size.height + 10)
        
        label.frame = CGRect(x: -30, y: 0, width: UIImage(named: "PasswordIcon")!.size.width + 70, height: UIImage(named: "PasswordIcon")!.size.height + 10 )
        
        bottomLineEmail.frame = CGRect(x: 0, y: email.frame.height - 2, width: email.frame.width, height: 2)
        
        bottomLineEmail.backgroundColor = UIColor.init(red: 255, green: 65, blue: 128, alpha: 1).cgColor
        
        bottomLinePassword.frame = CGRect(x: 0, y: password.frame.height - 2, width: email.frame.width, height: 2)
        
        bottomLinePassword.backgroundColor = UIColor.init(red: 255, green: 65, blue: 128, alpha: 1).cgColor
        
        email.leftView = contentView
        email.leftViewMode = .always
        email.clearButtonMode = .whileEditing
        password.leftView = contentView1
        password.leftViewMode = .always
        password.rightView = contentView2
        password.rightViewMode = .always
        password.clearButtonMode = .whileEditing
        email.borderStyle = .none
        email.layer.addSublayer(bottomLineEmail)
        password.borderStyle = .none
        password.layer.addSublayer(bottomLinePassword)
    }
}
