//
//  KanjiExtension.swift
//  AllKanjiExportKit
//
//  Created by Andriy K. on 9/24/17.
//  Copyright © 2017 haawa. All rights reserved.
//

import Foundation
import SanjiPersistance

extension SanjiPersistance.Kanji {
    
    convenience init(kanji: Kanji) {
        
        let innerKanji = kanji.kanji
        let character = innerKanji.character
        let meaning = SanjiPersistance.Meaning(english: innerKanji.meaning.english)
        let kunyomi = SanjiPersistance.Kunyomi(hiragana: innerKanji.kunyomi.hiragana, romaji: innerKanji.kunyomi.romaji)
        let onyomi = SanjiPersistance.Onyomi(katakana: innerKanji.onyomi.katakana, romaji: innerKanji.onyomi.romaji)
        
        let strokes = zip(innerKanji.strokes.images, innerKanji.strokes.timings).map { (image, timing) -> StrokeFrame in
            let frame = StrokeFrame(image: image, timings: timing)
            return frame
        }
        let strokesSet = StrokesSet(count: strokes.count, frames: strokes)
        
        let video = Video.init(mp4: innerKanji.video.mp4, poster: innerKanji.video.poster, webm: innerKanji.video.webm)
        
        
        let radical = SanjiPersistance.Radical.init(radical: kanji.radical)
        let position = Position.init(hiragana: kanji.radical.position.hiragana, romaji: kanji.radical.position.romaji, icon: kanji.radical.position.icon)
        
        let mainRadical = MainRadical.init(position: position, radical: radical)
        
        self.init(character: character,
                  meaning: meaning,
                  kunyomi: kunyomi,
                  onyomi: onyomi,
                  strokes: strokesSet,
                  video: video,
                  mainRadical: mainRadical)
    }
    
}
