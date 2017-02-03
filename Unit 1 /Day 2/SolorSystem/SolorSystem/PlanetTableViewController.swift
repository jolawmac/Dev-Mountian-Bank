//
//  PlanetTableViewController.swift
//  SolorSystem
//
//  Created by Josh & Erica on 1/31/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class PlanetTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

  
    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlanetController.planets.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }


    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)

        // Configure the cell...
        let planet = PlanetController.planets[indexPath.row]
        cell.textLabel?.text = planet.name
        
        cell.imageView?.image = UIImage(named: planet.imageName)

        return cell
    }
    
 

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toPlanetVC" {
            
            //What
            if let PlanetDetailViewController = segue.destination as? PlanetDetailViewController, let indexPath = self.tableView.indexPathForSelectedRow {
                
                let planet = PlanetController.planets[indexPath.row]
                
            //Where
                
                PlanetDetailViewController.planet = planet
                }
            }
            
            
        }
    }
 


