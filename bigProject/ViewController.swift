//
//  ViewController.swift
//  bigProject
//
//  Created by Cengiz Baygın on 21.08.2019.
//  Copyright © 2019 Cengiz Baygın. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    var userNameTXT = String()
    var userPasswordTXT = String()
    var userNameSegue = String()
    var userPasswordSegue = String()
    
    // FUNCS
    func correctEmpty (){
        let alertMessage = UIAlertController.init(title: "Gerekli Alanlar Boş!", message: "Doldurup Tekrar Dene", preferredStyle: UIAlertController.Style.alert)
        let alertOkButton = UIAlertAction.init(title: "TAMAM", style: UIAlertAction.Style.default, handler: nil)
        alertMessage.addAction(alertOkButton)
        self.present(alertMessage, animated: true, completion: nil)
    }
    func correctFailAlertFunc(){
        let alertMessage = UIAlertController.init(title: "Hatalı Giriş!", message: "Kullanıcı adı veya parola yanlış!", preferredStyle: UIAlertController.Style.alert)
        let alertOkButton = UIAlertAction.init(title: "TAMAM", style: UIAlertAction.Style.default, handler: nil)
        alertMessage.addAction(alertOkButton)
        self.present(alertMessage, animated: true, completion: nil)
        
    }
    func correctSuccesfullFunc () {
        let loginSuccessfullAlert = UIAlertController.init(title: "Giriş Başarılı!", message: "Sonraki sayfaya yönlendiriliyorsunuz", preferredStyle: UIAlertController.Style.alert)
        let loginOKButton = UIAlertAction.init(title: "Tamam", style: UIAlertAction.Style.default) { (UIAlertAction) in
            
        }
        loginSuccessfullAlert.addAction(loginOKButton)
        self.present(loginSuccessfullAlert, animated: true, completion: nil)
    }
    func segueisEmpty () {
        let segueEmptyAlert = UIAlertController.init(title: "Hesap Bulunamadı", message: "Lütfen Kayıt Olunuz.", preferredStyle: UIAlertController.Style.alert)
        let segueEmptyOKButton = UIAlertAction.init(title: "Tamam", style: UIAlertAction.Style.default) { (UIAlertAction) in
            
        }
        segueEmptyAlert.addAction(segueEmptyOKButton)
        self.present(segueEmptyAlert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    @IBAction func userLoginClicked(_ sender: Any) {
        userNameTXT = userTextField.text!
        userPasswordTXT = userPasswordTextField.text!
        loginLabel.text = userNameSegue
        if userNameTXT == "" || userPasswordTXT == "" {
           correctEmpty()
        }
        else if userNameSegue == "" || userPasswordSegue == "" {
            segueisEmpty()
        }
        else if userNameSegue == userNameTXT && userPasswordSegue == userPasswordTXT {
           correctSuccesfullFunc()
        }
    }
    @IBAction func switchButton(_ sender: Any) {
    }
 

}
