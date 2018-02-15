//
//  Kanji.swift
//  AllKanjiExportKit
//
//  Created by Andriy K. on 9/17/17.
//  Copyright © 2017 haawa. All rights reserved.
//

import Foundation

struct Kanji: Codable {
    
    struct Meaning: Codable {
        let english: String
    }
    
    struct Kanji: Codable {
        
        struct Kunyoumi: Codable {
            let hiragana: String
            let romaji: String
        }
        
        struct Onyoumi: Codable {
            let katakana: String
            let romaji: String
        }
        
        struct Strokes: Codable {
            let count: Int
            let images: [String]
            let timings: [Double]
        }
        
        struct Video: Codable {
            let mp4: String
            let poster: String
            let webm: String
        }
        
        
        let character: String
        let kunyomi: Kunyoumi
        let meaning: Meaning
        let onyomi: Onyoumi
        let strokes: Strokes
        let video: Video
    }
    
    struct Radical: Codable {
        
        struct Position: Codable {
            let hiragana: String
            let romaji: String
            let icon: String
        }
        
        struct Name: Codable {
            let hiragana: String
            let romaji: String
        }
        
        let character: String
        let strokes: Int
        let image: String
        let position: Position
        let name: Name
        let meaning: Meaning
        let animation: [String]
    }
    
    
    struct Word: Codable {
        
        struct Audio: Codable {
            let opus: String
            let aac: String
            let ogg: String
            let mp3: String
        }
        
        let japanese: String
        let meaning: Meaning
        let audio: Audio
        
    }
    
    let kanji: Kanji
    let radical: Radical
    let examples: [Word]
}
