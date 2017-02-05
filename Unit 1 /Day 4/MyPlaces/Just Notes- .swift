//
//  Just Notes- .swift
//  MyPlaces
//
//  Created by Josh & Erica on 2/2/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import Foundation



/* 
 
  START WITH VIEW FIRST: 
 
 tableview controller with a basic cell, and a plus bar button to make a new place
 
 - add tableview and name cell in identifier and make it a basic cell
 - add nav in editor and make initial view 
 
 a 2nd viewcontroller that has 2 textfields (for the name of the place and why you want to go there) add a 'save' bar button item, and a 'clear text' button 
 
 - add view controller and place two text fields (can add text view) 
 - set contraints 
 - add placeholder 
 - add nav item
 - add plus button to tvc
 - add save button to vc
 
 makes sure that you can navigate back to the first view contoller 
 
 - create segues from add button and cell to the view controller
 - name both

 
 THEN GO TO MODEL SECOND: 
 
 - Create model file in swift 
 - Make class 
 - make properties (what makes a place?: name, reason to go, 
 - initialize - blueprint, set parameters as properties, self.(name) = (name)
 - set up saving 
    - add private let keys 
    - add computed property, this brings data from class to dictionary
 - create failable dictionary init?, this bring data back from dictionary to class

 
 LAST GO TO CONTROLLERS: 
 
 - create swift file named place controller 
 - singleton and CRUD 
 - create add func (call in view controller)
 - create saveToPersistenceStore() func 
 - call saveto func in the add func 
 - create the loadtostore func (create failalbe dict in model (class)
 - call load to 
 - Create cocoa touch table view file 
 - add .sharecontroller to VC file 
    - fill out numberofrow, editcell, and segue 
 - create detail view controller 
 - connect storyboard views to files 
 - create outlets and actions by dragging 
 - 
 
 
 
*/
