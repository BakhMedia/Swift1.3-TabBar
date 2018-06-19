//
//  ViewController.swift
//  IfSwitchCase
//
//  Created by Ilya Aleshin on 29.05.2018.
//  Copyright © 2018 Bakh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var background: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var switcher: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func colorChange(_ sender: Any) {
        if (switcher.isOn) {
            background.backgroundColor = UIColor.black
            label.textColor = UIColor.white
            UIApplication.shared.statusBarStyle = .lightContent
        } else {
            background.backgroundColor = UIColor.white
            label.textColor = UIColor.black
            UIApplication.shared.statusBarStyle = .default
        }
    }
    
}

