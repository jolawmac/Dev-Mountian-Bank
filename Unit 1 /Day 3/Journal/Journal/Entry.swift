//
//  Entry.swift
//  Journal
//
//  Created by Josh & Erica on 2/1/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import Foundation

class Entry: Equatable {
    
    private static let timestampKey = "timestamp"
    private static let titleKey = "title"
    private static let textKey = "text"
    
    var timeStamp: NSDate
    var title: String
    var text: String
    
    init(timeStamp: NSDate = NSDate.init(), title: String, text: String) {
        self.timeStamp = timeStamp
        self.title = title
        self.text = text
    }
    
    var dictionaryRepresentation: [String: AnyObject] {
        let entryDictionary = [Entry.timestampKey: self.timeStamp, Entry.titleKey: self.title, Entry.textKey: self.text] as [String : Any]
        return entryDictionary as [String : AnyObject]
    }
    
    init?(dictionary: [String: AnyObject]) {
        guard let timeStamp = dictionary[Entry.timestampKey] as? NSDate,
        let title = dictionary[Entry.titleKey] as? String,
            let text = dictionary[Entry.textKey] as? String else {
                return nil
        }
        self.timeStamp = timeStamp
        self.title = title
        self.text = text
    }
}

func ==(lhs: Entry, rhs: Entry) -> Bool {
    return lhs.timeStamp == rhs.timeStamp && lhs.text == rhs.text && lhs.title == rhs.title
}
