//
//  ViewController.swift
//  a202FBAu1
//
//  Created by 申潤五 on 2022/3/6.
//

import UIKit
import Firebase


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        Auth.auth().addStateDidChangeListener { auth, user in
            if user != nil{
                //成功登入
                self.whenSignIn()
            }else{
                //登出
                self.whenSingOut()
            }
        }
        
    }
    
    func signIn(){
        Auth.auth().signInAnonymously { result, error in
            if error != nil{
                print(error?.localizedDescription)
            }else{
                print(result.debugDescription)
            }
        }
    }
    
    func signOut(){
        do{
            try Auth.auth().signOut()
        }catch{
            print(error.localizedDescription)
        }
        
    }
    
    func whenSignIn(){
        print("登入")
        print(Auth.auth().currentUser?.uid)
    }
    func whenSingOut(){
        print("登出")
    }

    @IBAction func signIn(_ sender: Any) {
        signIn()
    }
    
    @IBAction func signOut(_ sender: Any) {
        signOut()
    }
}

