//
//  StringToken.swift
//  SanjiPersistance
//
//  Created by Andrii Kharchyshyn on 2/15/18.
//  Copyright © 2018 haawa. All rights reserved.
//

import Foundation
import RealmSwift

public class StringToken: Object {
    
    @objc public private(set) dynamic var string = ""
    
    public convenience init(string: String) {
        
        self.init()
        self.string = string
    }
    
    override public class func primaryKey() -> String? {
        return "string"
    }
}
