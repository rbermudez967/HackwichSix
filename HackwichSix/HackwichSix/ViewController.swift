//
//  ViewController.swift
//  HackwichSix
//
//  Created by Randy Bermudez on 3/2/21.
//  Copyright © 2021 Randy Bermudez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myFriendsArray = ["Rob", "Bud", "Chuck", "Ayva", "Kai"]
    var myPlacesToVisit = ["Japan", "Philippines", "Honolulu","Anaheim","Florida","Colorado","London"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPlacesToVisit.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = myPlacesToVisit[indexPath.row]
        cell.textLabel?.text = text
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

