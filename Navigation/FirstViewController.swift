//
//  FirstViewController.swift
//  Navigation
//
//  Created by Ольга Клюшкина on 15.05.17.
//  Copyright © 2017 klyushkina. All rights reserved.
//

import Foundation
import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!

    var initLabelValue: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstLabel.text = initLabelValue ?? "Unknown"
        // Do any additional setup after loading the view, typically from a nib.
    }
}
