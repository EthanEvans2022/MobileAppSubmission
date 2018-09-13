//
//  ViewController.swift
//  DemoApp
//
//  Created by Ethan Evans on 8/31/18.
//  Copyright © 2018 Ethan Evans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    var backgroundColor : UIColor!
    var textColor : UIColor!;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundColor = view.backgroundColor;
        textColor = textLabel.textColor;
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onButtonTap(_ sender: Any) {
        textLabel.textColor = UIColor.orange
    }
    @IBAction func didViewButtonPress(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }
    @IBAction func didTextStringChange(_ sender: Any) {
        textLabel.text = "Goodbye!"
    }
    @IBAction func onTapReset(_ sender: Any) {
        textLabel.text = "Hello"
        view.backgroundColor = backgroundColor;
        textLabel.textColor = textColor
    }
    @IBAction func onChangeText(_ sender: Any) {
        textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
    }
    

    
    
     
}

