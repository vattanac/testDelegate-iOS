//
//  ViewControler2.swift
//  TestDelegation
//
//  Created by Vattanac on 11/8/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit

protocol ChosePersonDelegate {
    func choosePerson(name:String)
}

class ViewController2: UIViewController {
    
    @IBOutlet weak var lblracha: UIButton!
    @IBOutlet weak var lblstyelsname: UIButton!
    var choosePersonDelegate:ChosePersonDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblracha.layer.cornerRadius = 5
        lblstyelsname.layer.cornerRadius = 5
    }
    
    @IBAction func rachanabtn(_ sender: Any) {
        choosePersonDelegate.choosePerson(name: "Rachana")
        dismiss(animated: true, completion: nil)
    }
    @IBAction func maliibtn(_ sender: Any) {
        choosePersonDelegate.choosePerson(name: "Malii")
        dismiss(animated: true, completion: nil)
    }
    
}

