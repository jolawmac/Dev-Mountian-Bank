//
//  NotesTableViewController.swift
//  Notes
//
//  Created by Josh & Erica on 2/3/17.
//  Copyright © 2017 DevMountain. All rights reserved.
//

import UIKit

class NotesTableViewController: UITableViewController {

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
        
        // Create singleton to use here, use .count so the number of rows eqauls the amount in the notesArray
        
        return NotesController.sharedController.notesArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "savedNotes", for: indexPath)

        // First place the name of the reuseIdentifer, this is the segue name from the cell segue
        
        // Create constant that will hold the array found in indexPath.row and place it using cell.textLable?.text and the name of that constant
        
        let notes = NotesController.sharedController.notesArray[indexPath.row]
        
        cell.textLabel?.text = notes.notes
        
        
        // Configure the cell...

        return cell
    }
    

    // COULD NOT GET DELETE FUNCTION TO WORK
     // DELETE FUNCTION: CHECK TO SEE IF I NEED THIS
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            let notes = NotesController.sharedController.notesArray[indexPath.row]
            NotesController.sharedController.remove(notes: notes)
            
            
            
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)

        
        }
        
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toDisplayNotes" {
            
            // the what
            if let indexPath = tableView.indexPathForSelectedRow {
                let sendToNotesDetail = NotesController.sharedController.notesArray[indexPath.row]
                // the where (use destionation here, also create ViewContoller file and add notes variable as an optional as a placeholder for the text entered by user
                if let notesTVC = segue.destination as? NotesDetailViewController {
                    notesTVC.notes = sendToNotesDetail
                }
            }
        }
    }
}
