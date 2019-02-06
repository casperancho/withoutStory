//
//  ViewController.swift
//  swifty
//
//  Created by Артем Закиров on 06.02.2019.
//  Copyright © 2019 bmstu. All rights reserved.
//

import UIKit
import SwiftyVK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        VK.API.Video.get(<#T##Parameters#>)
        VK.setUp(appId: "String", delegate: SwiftyVKDelegate)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

