//
//  Item.swift
//  SanjiPersistance
//
//  Created by Andriy K. on 9/17/17.
//  Copyright © 2017 haawa. All rights reserved.
//

import Foundation
import RealmSwift

public class Radical: Object {
    
    @objc public private(set) dynamic var character = ""
    @objc public private(set) dynamic var strokes = 0
    @objc public private(set) dynamic var image = ""
    @objc public private(set) dynamic var hiragana = ""
    @objc public private(set) dynamic var romaji = ""
    @objc public private(set) dynamic var meaning: Meaning?
    public let animation = List<Animation>()
    
    public convenience init(character: String,
         strokes: Int,
         image: String,
         hiragana: String,
         romaji: String,
         meaning: Meaning,
         animations: [Animation]) {
        
        self.init()
        self.character = character
        self.strokes = strokes
        self.image = image
        self.hiragana = hiragana
        self.romaji = romaji
        self.meaning = meaning
        self.animation.removeAll()
        self.animation.append(objectsIn: animations)
    }
    
    public override static func primaryKey() -> String? {
        return "character"
    }
    
}
