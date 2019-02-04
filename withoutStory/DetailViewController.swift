//
//  DetailViewController.swift
//  withoutStory
//
//  Created by Артем Закиров on 04.02.2019.
//  Copyright © 2019 bmstu. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController : UIViewController{
    var forlabel = ""
    override func viewDidLoad() {
        super .viewDidLoad()
        view.backgroundColor =  .purple
        var infoLabel = UILabel()
        print(forlabel)
        infoLabel.text = forlabel
        view.addSubview(infoLabel)
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let horizontal = NSLayoutConstraint(item: infoLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
        let vert = NSLayoutConstraint(item: infoLabel, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0)
        let width = NSLayoutConstraint(item: infoLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 75)
        let height = NSLayoutConstraint(item: infoLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 30)
        
        let constrains: [NSLayoutConstraint] = [horizontal, vert,width,height]
        NSLayoutConstraint.activate(constrains)
    }
    
    
    
}

