//
//  LogViewController.swift
//  SegueTester
//
//  Created by cr0ss on 15.05.17.
//  Copyright © 2017 intive. All rights reserved.
//

import Foundation
import UIKit

class LogViewController: UIViewController {
    @IBOutlet var testCounterLabel: UILabel!
    @IBOutlet var errorCounterLabel: UILabel!
    let manager = LogManager.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        testCounterLabel.text = "Number of Tests: \(manager.newSessionCounter)"
        errorCounterLabel.text = "Number of Errors: \(manager.errorCounter)"
    }
}
