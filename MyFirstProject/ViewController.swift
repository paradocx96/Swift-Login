//
//  ViewController.swift
//  MyFirstProject
//
//  Created by m1 on 25/02/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var textEmail: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLogin(_ sender: Any) {
        if let emailSafe = textEmail.text,
           let pwSafe = textPassword.text {
            let textEmailSample: String = "abc@email.com"
            let textPasswordSample: String = "password"
            
            if emailSafe == textEmailSample && pwSafe == textPasswordSample {
                showAlert(text: "Correct!")
            } else {
                showAlert(text: "Wrong!")
            }
        }
    }
    
    
    @IBAction func btnForgotPassword(_ sender: Any) {
         let vc = SecondViewController() //storyboard?////.instantiateViewController(identifier:"second") //as! SecondViewController
        
        present(vc,animated: true)
    }
    
    func showAlert(text: String){
        let alert = UIAlertController(title: "LOGIN", message: "You Login Credentials are \(text)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
}

