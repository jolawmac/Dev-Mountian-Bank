//
//  PlanetDetailViewController.swift
//  PlanetsTwo
//
//  Created by Josh & Erica on 1/31/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var dayLengthLabel: UILabel!
    @IBOutlet weak var distanceFromSunLabel: UILabel!
    @IBOutlet weak var diameterLabel: UILabel!
    
    var planets: Planet?
    
    func withUpdatePlanets(planet: Planet) {
        planetImage.image = UIImage(named: planet.imageName)
        dayLengthLabel.text = "One day on \(planet.name) is \(planet.dayLength) hours."
        distanceFromSunLabel.text = "\(planet.name) is also \(planet.millionKMsFromSun) KM from the sun."
        diameterLabel.text = "\(planet.name) is \(planet.diameter) KM in diameter."
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if let planets = planets {
            withUpdatePlanets(planet: planets)
        }
        

        // Do any additional setup after loading the view.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
