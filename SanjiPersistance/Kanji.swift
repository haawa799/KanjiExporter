//
//  Kanji.swift
//  SanjiPersistance
//
//  Created by Andriy K. on 9/24/17.
//  Copyright © 2017 haawa. All rights reserved.
//

import Foundation
import RealmSwift

public class Kanji: Object {
    
    @objc public private(set) dynamic var character = ""
    @objc public private(set) dynamic var meaning: Meaning!
    @objc public private(set) dynamic var kunyomi: Kunyomi!
    @objc public private(set) dynamic var onyomi: Onyomi!
    @objc public private(set) dynamic var strokes: StrokesSet!
    @objc public private(set) dynamic var video: Video!
    @objc public private(set) dynamic var mainRadical: MainRadical!
    
    public convenience init(character: String,
                            meaning: Meaning,
                            kunyomi: Kunyomi,
                            onyomi: Onyomi,
                            strokes: StrokesSet,
                            video: Video,
                            mainRadical: MainRadical) {
        
        self.init()
        self.character = character
        self.meaning = meaning
        self.kunyomi = kunyomi
        self.onyomi = onyomi
        self.strokes = strokes
        self.video = video
        self.mainRadical = mainRadical
    }
    
    public override static func primaryKey() -> String? {
        return "character"
    }
    
}
