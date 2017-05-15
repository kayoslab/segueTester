//
//  RootViewController.swift
//  SegueTester
//
//  Created by cr0ss on 15.05.17.
//  Copyright © 2017 intive. All rights reserved.
//

import Foundation
import UIKit

class RootViewController: UITableViewController {
    let manager = LogManager.shared

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "rootShouldShowDestination" {
            manager.set(state: .prepareForSegue)
        }
    }

    @IBAction func unwind(segue:UIStoryboardSegue) {
        if segue.source is DestinationViewController {
            manager.set(state: .unassigned)
        }
    }
}
