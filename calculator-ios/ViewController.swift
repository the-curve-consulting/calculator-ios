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
        
        let tap = UITapGestureRecognizer(target: self.view,
                                         action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
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
    
    @IBAction func calculate(_ button: UIButton) {
        let d1 = Double(value1.text!)!
        let d2 = Double(value2.text!)!
        let calculator = CalculatorImpl.shared
        let op = ViewController.Operators[operatorPicker.selectedRow(inComponent: 0)]
        switch op {
        case "+":
            answerLabel.text = String(calculator.add(d1, d2))
        case "-":
            answerLabel.text = String(calculator.subtract(d1, d2))
        case "/":
            answerLabel.text = String(calculator.divide(d1, d2))
        case "*":
            answerLabel.text = String(calculator.multiply(d1, d2))
        default:
            answerLabel.text = ""
        }
    }
    
    @IBAction func showHistory(_ button: UIButton) {
        performSegue(withIdentifier: "showHistory", sender: button)
    }
    
}
