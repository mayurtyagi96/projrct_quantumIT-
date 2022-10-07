//
//  ViewController.swift
//  projectQuantumITInnovation
//
//  Created by mayur kant tyagi tyagi on 04/10/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var label2: UILabel!
    
    
    @IBAction func buttonPressed(){
        if textField1.text == "mayur.kant.96" && textField2.text == "#ItsMayur"{
            
            let next = self.storyboard?.instantiateViewController(withIdentifier: "viewController2") as! ViewController2
            self.navigationController?.pushViewController(next, animated: true)
        }else{
            label2.text = "invalid email or password"
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField1.delegate = self
        textField2.delegate = self
    }


}

