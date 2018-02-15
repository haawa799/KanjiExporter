//
//  Onyomi.swift
//  SanjiPersistance
//
//  Created by Andriy K. on 9/24/17.
//  Copyright © 2017 haawa. All rights reserved.
//

import Foundation
import RealmSwift

public class Onyomi: Object {
    
    public let katakanaList = List<StringToken>()
    public let romajiList = List<StringToken>()
    @objc public private(set) dynamic var katakana = ""
    
    public convenience init(katakana: String,
                            romaji: String) {
        
        self.init()
        
        let katakanaWords = katakana.components(separatedBy: japaneseSeparator).map({ StringToken(string: $0) })
        self.katakanaList.append(objectsIn: katakanaWords)
        
        let romajiWords = romaji.components(separatedBy: englishSeparator).map({ StringToken(string: $0) })
        self.romajiList.append(objectsIn: romajiWords)
        
        self.katakana = katakana
    }
    
    public override static func primaryKey() -> String? {
        return "katakana"
    }
}
