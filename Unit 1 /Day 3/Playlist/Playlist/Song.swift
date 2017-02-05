//
//  Song.swift
//  Playlist
//
//  Created by Josh & Erica on 2/1/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import Foundation

class Song: Equatable {
    
    private let songNameKey = "songName"
    private let artistNameKey = "artistname"
    
    let songName: String
    let artistName: String
    
    init(song: String, artist: String) {
        self.songName = song
        self.artistName = artist
    }
    
    
    // if you know both are string types you don't have to but anyobject, and dont have to cast either
    // take custom class and turn into dictionary so the userdefault can know how to store it 
    // taking the dictionary that we pull out of userdefaults and turning back into our custom class
    // dictionary to a class:
    
    init?(dictionary: [String: String]) {
        guard let songName = dictionary[songNameKey],
            let artistName = dictionary[artistNameKey] else {
                
                return nil
        }
        
        self.songName = songName
        self.artistName = artistName
}
    
    var dictionaryRepresentation: [String: String] {
        let dictionary: [String: String] = [songNameKey: songName, artistNameKey: artistName]
        return dictionary
    }
    
    
}


func ==(lhs: Song, rhs: Song) -> Bool {
    return lhs.songName == rhs.songName && lhs.artistName == rhs.artistName
}
    


