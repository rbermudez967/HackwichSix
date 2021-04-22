//
//  ViewController.swift
//  HackwichSix
//
//  Created by Randy Bermudez on 3/2/21.
//  Copyright © 2021 Randy Bermudez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var restaurantImageDate = [String]()
    
    //var myFriendsArray = ["Rob", "Bud", "Chuck", "Ayva", "Kai"]
    var myFriendsArray = ["Kapolei Kalapawai"]
    //var myPlacesToVisit = ["Japan", "Philippines", "Honolulu","Anaheim","Florida","Colorado","London"]
    //var myFriendsHouse = ["San Francisco", "New York", "Santa Rosa", "Makawao", "Anaheim"]
    var myFriendsHouse = [" "]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendsArray.count
    
    //func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      //  return myPlacesToVisit.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = myFriendsArray[indexPath.row]
        //let text = myPlacesToVisit[indexPath.row]
        cell.textLabel?.text = text
        cell.detailTextLabel?.text = myFriendsHouse[indexPath.row]
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        
        let dict = NSDictionary (contentsOfFile: path!)
        
        restaurantImageDate = dict!.object(forKey: "restaurantimages") as! [String]
        
        
    }


    //add a new tableview function that detects when a cell is selected
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue" {
            let s1 = segue.destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageDate[imageIndex!]
        }
    }
}

