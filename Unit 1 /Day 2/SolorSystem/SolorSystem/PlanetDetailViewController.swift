//
//  PlanetDetailViewController.swift
//  SolorSystem
//
//  Created by Josh & Erica on 1/31/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    
    
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetDiameter: UILabel!
    @IBOutlet weak var dayLength: UILabel!
    @IBOutlet weak var distanceFromSun: UILabel!
    
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateWithPlanet(planet: self.planet)
    }
    
    func updateWithPlanet(planet: Planet?) {
        if let planet = planet {
            self.title = planet.name
            
            
            self.planetImage.image = UIImage(named: planet.imageName)
            self.planetDiameter.text = "\(planet.name)'s diamter is \(planet.diameter)"
            
            self.planetDiameter.textColor = .black
            self.dayLength.text = "One day on \(planet.name) is \(planet.dayLength)"
            self.distanceFromSun.text = "\(planet.name) is \(planet.millionKMsFromSun) from the sun."
            self.view.bringSubview(toFront: planetDiameter)
            self.view.bringSubview(toFront: dayLength)
            self.view.bringSubview(toFront: distanceFromSun)
        }
        
    }
    
    // Do any additional setup after loading the view.
}
