//
//  ViewController.swift
//  Converter Calculator
//
//  Created by Jaylin Phipps on 7/26/17.
//  Copyright © 2017 Jaylin Phipps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputTextField: UITextField!
    @IBOutlet weak var outputConvertLabel: UILabel!
    @IBOutlet weak var inputConvertLabel: UILabel!
    
    var input1: Float = 0
    var input2: Float = 0
    var output1: Float = 0

    @IBAction func numbers(_ sender: UIButton) {
        inputTextField.text = inputTextField.text! + String(sender.tag - 1)
        
        input1 = Float(inputTextField.text!)!
    }
    
    @IBAction func operations(_ sender: UIButton) {
        if sender.tag == 12 {    //if C is pressed
            inputTextField.text = ""
            outputTextField.text = ""
            inputConvertLabel.text = ""
            outputConvertLabel.text = ""
            input1 = 0
        }
        /*
        if sender.tag == 11 { //if . is pressed
            DECIMAL
        }
 */
    }

    @IBAction func converterBtn(_ sender: Any) {
        
        let alert = UIAlertController(title: "Conversions", message: "Select A Conversion", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alert.addAction(UIAlertAction(title: "Feet To Miles", style: UIAlertActionStyle.default , handler: {
            (alertAction) -> Void in
            self.inputConvertLabel.text = "Ft"
            self.outputConvertLabel.text = "Mi"
            
            self.output1 = (self.input1 * Float(0.000189394))
            self.outputTextField.text = String(self.output1)
        }))
        
        alert.addAction(UIAlertAction(title: "Miles To Feet", style: UIAlertActionStyle.default , handler: {
            (alertAction) -> Void in
            self.inputConvertLabel.text = "Mi"
            self.outputConvertLabel.text = "Ft"
            
            self.output1 = (self.input1 * Float(5280))
            self.outputTextField.text = String(self.output1)
        }))
        
        
        
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

