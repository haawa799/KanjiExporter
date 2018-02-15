//
//  Exporter.swift
//  AllKanjiExportKit
//
//  Created by Andriy K. on 9/17/17.
//  Copyright © 2017 haawa. All rights reserved.
//

import Foundation
import SanjiPersistance
import RealmSwift

public class Exporter {
    
    public static func export() {
        
        let bundle = Bundle(for: Exporter.self)
        guard let url = bundle.url(forResource: "allKani", withExtension: "json") else {
            fatalError()
        }
        
        let data = try! Data(contentsOf: url)
        let decoder = JSONDecoder()
        let allKanji = try! decoder.decode([Kanji].self, from: data)
        
        let allRealmKanji = allKanji.flatMap { (kanji) -> SanjiPersistance.Kanji? in
            return SanjiPersistance.Kanji(kanji: kanji)
        }
        
        
        debugPrint(allRealmKanji.count)
        
        let realm = try! Realm()
        
        try! realm.write {
            realm.add(allRealmKanji, update: true)
        }
    }
    
}
