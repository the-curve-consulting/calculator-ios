//
//  ViewController.swift
//  calculator-ios
//
//  Created by James Ridgway on 20/04/2020.
//  Copyright © 2020 James Ridgway. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var operatorPicker: UIPickerView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var value1: UITextField!
    @IBOutlet weak var value2: UITextField!
    
    static let Operators = ["+", "-", "/", "*"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.operatorPicker.delegate = self
        self.operatorPicker.dataSource = self
        self.answerLabel.text = ""
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ViewController.Operators.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ViewController.Operators[row]
    }


}
