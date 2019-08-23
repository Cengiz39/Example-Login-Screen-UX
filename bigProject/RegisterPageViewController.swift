//
//  RegisterPageViewController.swift
//  bigProject
//
//  Created by Cengiz Baygın on 23.08.2019.
//  Copyright © 2019 Cengiz Baygın. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userRegisterMail: UITextField!
    @IBOutlet weak var userRegisterName: UITextField!
    @IBOutlet weak var userRegisterPassword: UITextField!
    @IBOutlet weak var userReRegisterPassword: UITextField!
    var registerName = "" , registerMail = "" , registerPassword = "" , registerRePassword = ""
    
    func CorrectAlert () { // func1  basl
        let alertMessage = UIAlertController.init(title: "Gerekli Alanlar Boş", message: "Doldurup tekrar dene.", preferredStyle: UIAlertController.Style.alert)
        let alertButton = UIAlertAction.init(title: "Tamam", style: UIAlertAction.Style.default) { (UIAlertAction) in
            self.userRegisterName.text = ""
            self.userRegisterMail.text = ""
            self.userReRegisterPassword.text = ""
            self.userRegisterPassword.text = ""
        }
        alertMessage.addAction(alertButton)
        self.present(alertMessage, animated: true, completion: nil)
    }// func 2  bitis
   

        

        func CorrectAlert2 () { // func 2 basl
            let alertMessage3 = UIAlertController.init(title: "Kayıt Başarılı!", message: "Kaydınız başarılı bir şekilde tamamlanmıştır. Ana menüye yönlendiriliyorsunuz.", preferredStyle: UIAlertController.Style.alert)
            let alertMessage3Button = UIAlertAction.init(title: "Tamam", style: UIAlertAction.Style.default) { (UIAlertAction) in
                self.performSegue(withIdentifier: "RegisterPageToMain", sender: nil)
                self.userRegisterName.text = ""
                self.userRegisterMail.text = ""
                self.userReRegisterPassword.text = ""
                self.userRegisterPassword.text = ""
                
            }
            alertMessage3.addAction(alertMessage3Button)
            self.present(alertMessage3, animated: true, completion: nil)
        } // func 2 bitis


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerButtonClicked(_ sender: Any) {
        registerName = userRegisterName.text!
        registerMail = userRegisterMail.text!
        registerPassword = userRegisterPassword.text!
        registerRePassword = userReRegisterPassword.text!
        if registerName == "" || registerMail == "" || registerPassword == "" || registerRePassword == "" {
            CorrectAlert ()
        
        }
        else {
            CorrectAlert2()
          self.performSegue(withIdentifier: "RegisterPageToMain", sender: nil)

            
    }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "RegisterPageToMain" {
                        let destinationVC = segue.destination as! ViewController
                        destinationVC.userNameSegue = registerName
                        destinationVC.userPasswordSegue = registerPassword
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
//    */
//    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "RegisterPageToMain" {
//            let destinationVC = segue.destination as! ViewController
//            destinationVC.userNameSegue = registerName
//            destinationVC.userPasswordSegue = registerPassword
//        }
}
