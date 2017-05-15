//
//  LogManager.swift
//  SegueTester
//
//  Created by cr0ss on 15.05.17.
//  Copyright © 2017 intive. All rights reserved.
//

import Foundation

class LogManager {
    internal static let shared = LogManager()
    private var newSession = false
    private var errorSession = false
    private (set) internal var newSessionCounter = 0
    private (set) internal var errorCounter = 0
    internal enum State: String {
        case unassigned = "null"
        case prepareForSegue = "Prepared For Segue"
        case viewDidLoad = "View Did Load"
        case viewWillAppear = "View Will Appear"
        case viewDidAppear = "View Did Appear"

        func prediction() -> State {
            switch self {
            case .unassigned:
                return .prepareForSegue
            case .prepareForSegue:
                return .viewDidLoad
            case .viewDidLoad:
                return .viewWillAppear
            case .viewWillAppear:
                return .viewDidAppear
            case .viewDidAppear:
                return .unassigned
            }
        }
    }
    private var state:State = .unassigned
    private init() { }

    internal func set(state: State) {
        if !newSession {
            newSession = true
            newSessionCounter += 1
        }
        if state == .unassigned {
            newSession = false
            errorSession = false
        }
        if state != self.state.prediction() {
            print("Error: Wrong state \(state.rawValue), expected State: \(self.state.prediction().rawValue)")
            if !errorSession {
                errorSession = true
                errorCounter += 1
            }
        }
        self.state = state
    }
}
