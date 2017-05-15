//
//  ViewController.swift
//  SegueTester
//
//  Created by cr0ss on 15.05.17.
//  Copyright © 2017 intive. All rights reserved.
//

import UIKit

class DestinationViewController: UIViewController {
    @IBOutlet var testCountLabel: UILabel!
    let manager = LogManager.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        manager.set(state: .viewDidLoad)
        testCountLabel.text = "Test Number: \(manager.newSessionCounter)"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        manager.set(state: .viewWillAppear)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        manager.set(state: .viewDidAppear)
    }
}

