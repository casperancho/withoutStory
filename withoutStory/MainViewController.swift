//
//  MainViewController.swift
//  withoutStory
//
//  Created by Артем Закиров on 04.02.2019.
//  Copyright © 2019 bmstu. All rights reserved.
//

import Foundation
import UIKit

class MainViewController : UIViewController{
    override func viewDidLoad() {
        super .viewDidLoad()
        view.backgroundColor =  .blue
        addButton()
    }
    
    @objc func buttonTapped(){
        print("tappeed")
        let DetailVC = DetailViewController()
        navigationController?.pushViewController(DetailVC, animated: true)
    }

    private func addButton(){
        let mainButton = UIButton()
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        mainButton.addTarget(self, action: #selector(buttonTapped),for: .touchUpInside)
        mainButton.setTitle("Go to Detail", for: .normal)
        mainButton.setTitleColor(.white, for: .normal)
        mainButton.backgroundColor = .green
        
        view.addSubview(mainButton)
        
        let horizontalCenter = NSLayoutConstraint(item: mainButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
        
        let verticalCenter = NSLayoutConstraint(item: mainButton, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0)
        
        let width = NSLayoutConstraint(item: mainButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 100)
        
        let height = NSLayoutConstraint(item: mainButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 75)
        
        let constraints: [NSLayoutConstraint] = [horizontalCenter,verticalCenter, width, height]
        NSLayoutConstraint.activate(constraints)
    }
    
}
