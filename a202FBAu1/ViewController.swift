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
        Auth.auth().signInAnonymously { result, error in
            if error != nil{
                print(error?.localizedDescription)
            }else{
                print(result.debugDescription)
            }
        }
        
        
    }


}

