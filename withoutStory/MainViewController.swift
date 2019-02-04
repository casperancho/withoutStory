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
    let textEdi = UITextField()
    override func viewDidLoad() {
        super .viewDidLoad()
        view.backgroundColor =  .blue
        addButton()
    }
    
    @objc func buttonTapped(){
        print(textEdi.text)
        let DetailVC = DetailViewController()
        DetailVC.forlabel = textEdi.text!
        navigationController?.pushViewController(DetailVC, animated: true)
    }

    private func addButton(){
        let mainButton = UIButton()
        
        textEdi.backgroundColor = .white
        textEdi.translatesAutoresizingMaskIntoConstraints = false
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        mainButton.addTarget(self, action: #selector(buttonTapped),for: .touchUpInside)
        mainButton.setTitle("Go to Detail", for: .normal)
        mainButton.setTitleColor(.white, for: .normal)
        mainButton.backgroundColor = .green
       
        view.addSubview(mainButton)
        view.addSubview(textEdi)
        
        let horizontalCenter = NSLayoutConstraint(item: mainButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
        let verticalCenter = NSLayoutConstraint(item: mainButton, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0)

        let width = NSLayoutConstraint(item: mainButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 100)

        let height = NSLayoutConstraint(item: mainButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 75)
        
        
        let thorizontalCenter = NSLayoutConstraint(item: textEdi, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
        let tverticalCenter = NSLayoutConstraint(item: textEdi, attribute: .centerY, relatedBy: .equal, toItem: mainButton, attribute: .centerY, multiplier: 1.0, constant: 80)
        let twidth = NSLayoutConstraint(item: textEdi, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 100)
        let theight = NSLayoutConstraint(item: textEdi, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 30)
        
        let constraints: [NSLayoutConstraint] = [horizontalCenter,verticalCenter, width, height, thorizontalCenter,tverticalCenter, twidth, theight]
        NSLayoutConstraint.activate(constraints)
        
    }
    
}
