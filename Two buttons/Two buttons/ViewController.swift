//
//  ViewController.swift
//  Two buttons
//
//  Created by Student on 16/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SetTextButton(_ sender: Any) {
        label.text = textField.text
    }
    
    @IBAction func ClearTextButtonTapped(_ sender: Any) {
        textField.text = ""
        label.text = ""
    }
}

