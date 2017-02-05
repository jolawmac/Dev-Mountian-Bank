//
//  SongListTableViewController.swift
//  Playlist
//
//  Created by Josh & Erica on 2/1/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class SongListTableViewController: UITableViewController {

    @IBOutlet weak var artistNameTextField: UITextField!
    @IBOutlet weak var songTitleTextField: UITextField!
    
    @IBAction func addSongButtonTapped(_ sender: Any) {
        if let songTitle = songTitleTextField.text,
            let artistName = artistNameTextField.text,
            let playlist = playlist {
            SongController.sharedController.addSongWith(title: songTitle, artist: artistName, toPLaylist: playlist)
            tableView.reloadData()
        }
    
    }
    
    var playlist: Playlist?
    
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

        
        if let playlist = playlist {
            return playlist.songList.count
        } else {
            return 0
        }
        }
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "songListCell", for: indexPath)
        
        let songList = playlist?.songList[indexPath.row]
        
        cell.textLabel?.text = songList?.songName
        
        cell.detailTextLabel?.text = songList?.artistName

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
            // Delete the row from the data source
            
            if let playlist = playlist {
                let song = playlist.songList[indexPath.row]
                SongController.sharedController.delete(song: song, from: playlist)

            tableView.deleteRows(at: [indexPath], with: .fade)
            }
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
