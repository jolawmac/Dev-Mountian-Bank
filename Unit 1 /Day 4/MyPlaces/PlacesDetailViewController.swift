//
//  PlacesDetailViewController.swift
//  MyPlaces
//
//  Created by Josh & Erica on 2/2/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class PlacesDetailViewController: UIViewController {
    
    @IBAction func savedTappedButton(_ sender: Any) {
        if let placeName = placeTextField.text, let reasonToGo = placesTextField.text {
            
            PlaceController.sharedController.addPlaceWith(name: placeName, reasonToGo: reasonToGo)
            clearTextField()
            
            _ = self.navigationController?.popViewController(animated: true)
            
    }
    }
    
    func updateWith() {
    super.viewDidLoad()
    if let place = place {
        self.placesTextField.text = place.name
        self.placeTextField.text = place.reasonToGo 
    }
    }
    
    func clearTextField() {
        placesTextField.text = ""
        placeTextField.text = ""
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        clearTextField()
        
    }
    
    
    @IBOutlet weak var placeTextField: UITextField!
    @IBOutlet weak var placesTextField: UITextView!
    
    var place: Place?

    override func viewDidLoad() {
        super.viewDidLoad()

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
