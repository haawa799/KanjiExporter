//
//  Animation.swift
//  SanjiPersistance
//
//  Created by Andriy K. on 9/18/17.
//  Copyright © 2017 haawa. All rights reserved.
//

import Foundation
import RealmSwift

public class Animation: Object {
    
    @objc public private(set) dynamic var url = ""
    
    public convenience init(url: String) {
        
        self.init()
        self.url = url
    }
    
    public override static func primaryKey() -> String? {
        return "url"
    }
    
}
