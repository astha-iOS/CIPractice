//
//  ViewController.swift
//  CIPractice
//
//  Created by Astha yadav on 15/02/21.
//

import UIKit
import AppCenter
import AppCenterCrashes

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        AppCenter.start(withAppSecret: "62ecc0b7-c9dd-4ddf-902d-098d62ac6c33", services:[
          Crashes.self
        ])
    }


}

