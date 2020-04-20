//
//  CalculatorHistoryViewController.swift
//  calculator-ios
//
//  Created by James Ridgway on 20/04/2020.
//  Copyright © 2020 James Ridgway. All rights reserved.
//

import UIKit
import Foundation


class CalculatorHistoryViewController: UITableViewController {
    
    let cellReuseIdentifier = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)

    }

    // number of rows in table view
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CalculatorImpl.shared.history.count
    }

    // create a cell for each table view row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // create a new cell if needed or reuse an old one
        let cell: UITableViewCell = (self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell?)!

        // set the text from the data model
        cell.textLabel?.text = CalculatorImpl.shared.history[indexPath.row]

        return cell
    }
    
}
