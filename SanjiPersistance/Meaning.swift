//
//  Meaning.swift
//  SanjiPersistance
//
//  Created by Andriy K. on 9/18/17.
//  Copyright © 2017 haawa. All rights reserved.
//

import Foundation
import RealmSwift

public class Meaning: Object {
    
    public let englishWords = List<MeaningWord>()
    
    public convenience init(english: String) {
        
        self.init()
        let words = english.components(separatedBy: englishSeparator).map({ MeaningWord(string: $0) })
        englishWords.append(objectsIn: words)
    }
    
}
