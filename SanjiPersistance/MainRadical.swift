//
//  MainRadical.swift
//  SanjiPersistance
//
//  Created by Andriy K. on 9/24/17.
//  Copyright © 2017 haawa. All rights reserved.
//

import Foundation
import RealmSwift

public class MainRadical: Object {
    
    @objc public private(set) dynamic var position: Position!
    @objc public private(set) dynamic var radical: Radical!
    
    public convenience init(position: Position,
                            radical: Radical) {
        self.init()
        self.position = position
        self.radical = radical
    }
}

public class Position: Object {
    
    @objc public private(set) dynamic var hiragana = ""
    @objc public private(set) dynamic var romaji = ""
    @objc public private(set) dynamic var icon = ""
    
    public convenience init(hiragana: String,
                            romaji: String,
                            icon: String) {
        self.init()
        self.hiragana = hiragana
        self.romaji = romaji
        self.icon = icon
    }
}
