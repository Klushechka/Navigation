//
//  ViewController.swift
//  Navigation
//
//  Created by Ольга Клюшкина on 15.05.17.
//  Copyright © 2017 klyushkina. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var sliderValue = "50"
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)

    @IBOutlet weak var slider: UIButton!
    
    @IBOutlet weak var firstViewButton: UIButton!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var secondViewButton: UIButton!
    
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if textField != nil {
        self.textField.delegate = self
        }
       
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderMover(_ sender: UISlider) {
        sliderValue = String(Int(sender.value))
    }
    
    @IBAction func firstVCButton(_ sender: UIButton) {
        // Link with the FirstVC
        let firstVC = storyBoard.instantiateViewController(withIdentifier: "firstVC") as! FirstViewController
        firstVC.initLabelValue = sliderValue
        self.show(firstVC, sender: nil)
    }
    
    @IBAction func secondVCButton(_ sender: UIButton) {
        // Link with the SecondVC
        let secondVC = storyBoard.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        secondVC.initLabelValue = textField.text 
        self.show(secondVC, sender: nil)
    }
    
    @IBAction func doneButton(_ sender: UIBarButtonItem) {
        self.navigationController?.dismiss(animated: true, completion: nil)
        //self.navigationController!.popViewController(animated: true)
    }
    
}
