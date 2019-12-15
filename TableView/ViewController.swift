//
//  ViewController.swift
//  TableView
//
//  Created by Felix-ITS016 on 15/11/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    let nameArray = ["Nitu","Nilam","Nisha","Neha","Nilima"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell") 
        cell.textLabel?.text = nameArray[indexPath.row]
        return cell
        
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        tableView.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

