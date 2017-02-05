//
//  PlaylistTableViewController.swift
//  Playlist
//
//  Created by Josh & Erica on 2/1/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class PlaylistTableViewController: UITableViewController {

    @IBOutlet weak var playlistTitleTextField: UITextField!
    
    @IBAction func addPlaylistButtonTapped(_ sender: Any) {

    // take the text from the text field (optional so unwrap)
        if let text = playlistTitleTextField.text {
    // call the createplaylist func 
        PlaylistController.sharedController.create1PlaylistWith(name: text)
            tableView.reloadData()
    }
    }
    
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
        return PlaylistController.sharedController.playlistsArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playlistCell", for: indexPath)
        
        let playlist = PlaylistController.sharedController.playlistsArray[indexPath.row]
        
        cell.textLabel?.text = playlist.playlistName
        
        // Detail labels text to be the number of songs in the playlist
        
        cell.detailTextLabel?.text = "\(playlist.songList.count) songs"

        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let playlist = PlaylistController.sharedController.playlistsArray[indexPath.row]
            
            PlaylistController.sharedController.delete(playlist: playlist)
            
            
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toSongTVC" {
            
            // Pass playlist to the songTVC 
            
            if let indexPath = tableView.indexPathForSelectedRow {
                let sendToPlaylist = PlaylistController.sharedController.playlistsArray[indexPath.row]
                
                if let songTVC = segue.destination as? SongListTableViewController {
                    songTVC.playlist = sendToPlaylist
                }
            }
        }
    }
}
