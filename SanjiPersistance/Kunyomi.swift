//
//  Kunyomi.swift
//  SanjiPersistance
//
//  Created by Andriy K. on 9/24/17.
//  Copyright © 2017 haawa. All rights reserved.
//

import Foundation
import RealmSwift

public class Kunyomi: Object {
    
    public let hiraganaList = List<StringToken>()
    public let romajiList = List<StringToken>()
    @objc public private(set) dynamic var hiragana = ""
    
    public convenience init(hiragana: String,
                            romaji: String) {
        
        self.init()
        
        let hiraganaWords = hiragana.components(separatedBy: japaneseSeparator).map({ StringToken(string: $0) })
        self.hiraganaList.append(objectsIn: hiraganaWords)
        
        let romajiWords = romaji.components(separatedBy: englishSeparator).map({ StringToken(string: $0) })
        self.romajiList.append(objectsIn: romajiWords)
        
        
        self.hiragana = hiragana
    }
    
    public override static func primaryKey() -> String? {
        return "hiragana"
    }
}
