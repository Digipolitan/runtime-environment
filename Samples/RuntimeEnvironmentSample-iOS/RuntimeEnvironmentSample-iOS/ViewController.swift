//
//  ViewController.swift
//  RuntimeEnvironmentSample-iOS
//
//  Created by Benoit BRIATTE on 23/12/2016.
//  Copyright © 2016 Digipolitan. All rights reserved.
//

import UIKit
import RuntimeEnvironment

class ViewController: UIViewController {

    @IBOutlet var modeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.modeLabel.text = RuntimeEnvironment.shared.mode.rawValue
    }
}
