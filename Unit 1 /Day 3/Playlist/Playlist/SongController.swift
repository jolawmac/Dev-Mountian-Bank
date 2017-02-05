//
//  SongController.swift
//  Playlist
//
//  Created by Josh & Erica on 2/1/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import Foundation

class SongController {
    
    // create 
    
    static let sharedController = SongController()
    
    func addSongWith(title: String, artist: String, toPLaylist playlist: Playlist) {
        let song = Song(song: title, artist: artist)
        
        playlist.songList.append(song)
        PlaylistController.sharedController.saveToPersistantStore()
        
    }
    
    
    // delete
    
    func delete(song: Song, from playlist: Playlist) {
        
       if let index = playlist.songList.index(of: song) {
            playlist.songList.remove(at: index)
        }
    }

}

