//
//  RadicalExtension.swift
//  AllKanjiExportKit
//
//  Created by Andriy K. on 9/17/17.
//  Copyright © 2017 haawa. All rights reserved.
//

import Foundation
import SanjiPersistance

extension SanjiPersistance.Radical {
    
    convenience init(radical: Kanji.Radical) {
        
        let meaning = SanjiPersistance.Meaning.init(english: radical.meaning.english)
        let animations = radical.animation.map { SanjiPersistance.Animation(url: $0) }
        
        self.init(character: radical.character,
                  strokes: radical.strokes,
                  image: radical.image,
                  hiragana: radical.name.hiragana,
                  romaji: radical.name.romaji,
                  meaning: meaning,
                  animations: animations)
    }
    
}



