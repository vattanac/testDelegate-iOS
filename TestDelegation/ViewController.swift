//
//  ViewController.swift
//  TestDelegation
//
//  Created by Vattanac on 11/8/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblWho: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblWho.layer.cornerRadius = 5
    }

  
    
    @IBAction func chosepersonBtn(_ sender: Any) {
        let selectVC = storyboard?.instantiateViewController(withIdentifier: "choosepersonVC") as! ViewController2
        
        selectVC.choosePersonDelegate = self
        present(selectVC,animated: true,completion: nil)
        
    }
}

extension ViewController:ChosePersonDelegate {
    func choosePerson(name: String) {
        lblName.text = name
    }
}

