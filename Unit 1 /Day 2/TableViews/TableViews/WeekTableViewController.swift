//
//  WeekTableViewController.swift
//  TableViews
//
//  Created by Josh & Erica on 1/31/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class WeekTableViewController: UITableViewController {

    var daysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return daysOfWeek.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)
        
        cell.textLabel?.text = daysOfWeek[indexPath.row]

        // Configure the cell...

        return cell
    }
    

       // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Check the segue. indentifier and make sure its going to the right place.
        
        if segue.identifier == "toDayVC" {
            
            // What are we passing to the next view controller?
            
            if let indexPath = tableView.indexPathForSelectedRow, let dayVC = segue.destination as? DayViewController {
                
                // Where is the next view controller? (Get the instance of the destination View Controller.)
                
            let day = daysOfWeek[indexPath.row]
            
                // We put the 'what' 'where'. Pass what you need to the destination View Controller.
                
                dayVC.dayString = day
                
            }
        }
    }
}
