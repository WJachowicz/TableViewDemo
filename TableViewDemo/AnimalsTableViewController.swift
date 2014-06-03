//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Wojciech Jachowicz on 03.06.2014.
//  Copyright (c) 2014 Wojciech Jachowicz. All rights reserved.
//

import UIKit

class AnimalsTableViewController: UITableViewController {
    
    let CellReuseIdentifier = "CellReuseIdentifier"
    
    var animals = [["Cat", "Dog"],["Salmon","Trout"]]
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Animals"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return animals[section].count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return animals.count
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell : UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(CellReuseIdentifier) as? UITableViewCell
        if !cell {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: CellReuseIdentifier)
        }
        cell!.text = animals[indexPath.section][indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        let animalName = animals[indexPath.section][indexPath.row]
        let animalDetailsViewController = AnimalDetailsViewController(animalName: animalName)
        self.navigationController.pushViewController(animalDetailsViewController, animated: true)
    }
}

