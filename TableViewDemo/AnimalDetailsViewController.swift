//
//  AnimalDetailsViewController.swift
//  TableViewDemo
//
//  Created by Wojciech Jachowicz on 03.06.2014.
//  Copyright (c) 2014 Wojciech Jachowicz. All rights reserved.
//

import UIKit

class AnimalDetailsViewController: UIViewController {
    
    var animalName : String
    var boshLabel : UILabel
    
    init(animalName : String) {
        self.animalName = animalName
        self.boshLabel = UILabel();
        self.boshLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.boshLabel.textColor = UIColor.blackColor()
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        self.title = animalName
        self.boshLabel.text = "Bosh!\nYou've just selected \(self.animalName) in your first Swift app!"
        self.boshLabel.textAlignment = NSTextAlignment.Center
        self.boshLabel.numberOfLines = 0
        self.boshLabel.preferredMaxLayoutWidth = 200.0
        self.view.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(self.boshLabel)
        
        self.view.addConstraint(NSLayoutConstraint(item: self.boshLabel, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0.0))
        self.view.addConstraint(NSLayoutConstraint(item: self.boshLabel, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: 0.0))
    }
}
