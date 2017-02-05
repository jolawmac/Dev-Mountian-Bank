//
//  PlanetTableViewController.swift
//  PlanetsTwo
//
//  Created by Josh & Erica on 1/31/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class PlanetTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlanetController.planets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)

        let planet = PlanetController.planets[indexPath.row]
        cell.textLabel?.text = planet.name
        cell.imageView?.image = UIImage(named: planet.imageName)
        cell.imageView?.contentMode = .scaleToFill
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
    
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        
        if segue.identifier == "toPlanetDetailVC" {
            
            if let indexPath = tableView.indexPathForSelectedRow {
                let sendPlanet = PlanetController.planets[indexPath.row]
                if let planetDV = segue.destination as? PlanetDetailViewController {
                planetDV.planets = sendPlanet
        }
        
        // Pass the selected object to the new view controller.
        
        
    }




}
}
}


