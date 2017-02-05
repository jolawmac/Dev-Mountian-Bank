//
//  PlacesListTableViewController.swift
//  MyPlaces
//
//  Created by Josh & Erica on 2/2/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class PlacesListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    
    // MARK: - Table view data source

    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlaceController.sharedController.placesArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "placeCell", for: indexPath)

        // Configure the cell...
        
        let place = PlaceController.sharedController.placesArray[indexPath.row]
        
        cell.textLabel?.text = place.name

        return cell
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == " toEditPlace" {
             //what - a place 
            if let indexPath = tableView.indexPathForSelectedRow {
                let place = PlaceController.sharedController.placesArray[indexPath.row]
                if let placesListTVC = segue.destination as? PlacesDetailViewController {
                    placesListTVC.place = place
                }
            }
        }
    }
}
