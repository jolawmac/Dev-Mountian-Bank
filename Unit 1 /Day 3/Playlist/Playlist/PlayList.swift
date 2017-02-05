//
//  PlayList.swift
//  Playlist
//
//  Created by Josh & Erica on 2/1/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import Foundation

// make the constants
// name
// an array of songs
// make an initializer

class Playlist: Equatable {
    
    private let playlistNameKey = "playlistName"
    private let songListKey = "songList"
    
    let playlistName: String
    var songList: [Song]
    
    init(playlistName: String, songList: [Song] = []) {
        self.playlistName = playlistName
        self.songList = songList
    }
    
    // Dictionary to Playlist
    // for taking the dictionary from userdefaults and turning it back into a Playlist object
    
    init?(dictionary: [String: Any]) {
        
        // get the values out of the dictionary and cast them as their correct types 
        
        if let playlistName = dictionary[playlistNameKey] as? String,
            let songList = dictionary[songListKey] as? [[String: String]] {
        
        // convert the songList into an array of Songs {[Song})
        
        var songArray: [Song] = []
        
        for songDictionary in songList {
            if let song = Song(dictionary: songDictionary) {
                songArray.append(song)
            }
        }
            
            
            // set each value to Playlist's corresponding property (self.playlistName)
            
            self.songList = songArray
            self.playlistName = playlistName
        
        } else {
            return nil
        }
        }
    
    // for taking a Playlist object and turning it into a dictionary so that userdefaults can know how to store it.
    
    var dictionaryRepresentation: [String: Any] {
        
        
        var songDictionariesArray: [[String: String]] = []
        
        for song in songList {
           let songDictionary = song.dictionaryRepresentation
            
            songDictionariesArray.append(songDictionary)
        }
        
            let dictionary: [String: Any] = [playlistNameKey: playlistName, songListKey: songDictionariesArray]
        return dictionary
    }
}


        
    
    
func ==(lhs: Playlist, rhs: Playlist) -> Bool {
    return lhs.playlistName == rhs.playlistName && lhs.songList == rhs.songList
}






//if let playlistName = dictionary[playlistName] as? String, let songList = dictionary[songListKey] as? [[String: String]] {
//    
//    self.playlistName = playlistName
//    
//    var songArray: [Song] = []
//    
//    for songDictionary in songList {
//        
//        if let song =  Song(dictionary: songDictionary) {
//            songArray.append(song)
//            
//        }
//    }
//    self.songList = songArray
//    
//} else {
//    return nil
//}
//}
