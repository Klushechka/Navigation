//
//  SecondViewController.swift
//  Navigation
//
//  Created by Ольга Клюшкина on 15.05.17.
//  Copyright © 2017 klyushkina. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var secondLabel: UILabel!
    
    var initLabelValue: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        secondLabel.text = initLabelValue ?? "Unknown"
        // Do any additional setup after loading the view, typically from a nib.
    }
}

