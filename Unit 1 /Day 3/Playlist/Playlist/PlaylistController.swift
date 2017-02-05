//
//  PlaylistController.swift
//  Playlist
//
//  Created by Josh & Erica on 2/1/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import Foundation

// CRUD:
// Create, Read, Update, Delete

class PlaylistController {
    
    
    // create a function that will put playlist into a place .Table view needs to grab playlist and show on screen. Data source is func. Then create an enpty array to take playlist and put into that array.
    
    static let sharedController = PlaylistController()
    
    init() {
        loadFromPersistentStore()
    }
    
    
     // Read 
    // This is the data source where the tableview will get the info to display on the screen 
    
    private let playlistKey = "playlists"
    
    var playlistsArray: [Playlist] = []
    
    
    // Create
    // the name that the user puts into the text field 
    
    func create1PlaylistWith(name: String) {
        let playlist = Playlist(playlistName: name)
        
        playlistsArray.append(playlist)
        saveToPersistantStore()
    }
    
    
    // Update
    
    
    // Delete
    
    func delete(playlist: Playlist) {
        // Where is the playlist stored at? 
        // how do we get the specific playlist from the array
        // first get the index of the specific playlist
        
        if let index = playlistsArray.index(of: playlist) {
        playlistsArray.remove(at: index)
            saveToPersistantStore()
    }
    }
    
    
    
    
    func saveToPersistantStore() {
        
        var playlistDictionaryArray: [[String: Any]] = []
        for playlist in playlistsArray {
            let playlistDictionary = playlist.dictionaryRepresentation
                playlistDictionaryArray.append(playlistDictionary)
        }
        
        
        /*
         // closures: computed properties, etc, .map
         
         let songDictionariesArray = songList.map({ $0.dictionaryRepresentation})
         let songArray2 = songList.flatmap({ Song(dictionary: $0)})
         
         */

        
        UserDefaults.standard.set(playlistDictionaryArray, forKey: playlistKey)
    }
    
    func loadFromPersistentStore() {
        
        if let playlistDictionaryArray = UserDefaults.standard.object(forKey: playlistKey) as? [[String: Any]] {
            var playlists: [Playlist] = []
            for playlistDictionary in playlistDictionaryArray {
                if let playlist = Playlist(dictionary: playlistDictionary) {
                    playlists.append(playlist)
                }
            }
            self.playlistsArray = playlists
        }
    }
    
    
}
