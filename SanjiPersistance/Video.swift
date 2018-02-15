//
//  Video.swift
//  SanjiPersistance
//
//  Created by Andriy K. on 9/24/17.
//  Copyright © 2017 haawa. All rights reserved.
//

import Foundation
import RealmSwift

public class Video: Object {
    
    @objc public private(set) dynamic var mp4 = ""
    @objc public private(set) dynamic var poster = ""
    @objc public private(set) dynamic var webm = ""
    
    public convenience init(mp4: String,
                            poster: String,
                            webm: String) {
        self.init()
        self.mp4 = mp4
        self.poster = poster
        self.webm = webm
    }
}
