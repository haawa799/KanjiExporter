//
//  StrokesSet.swift
//  SanjiPersistance
//
//  Created by Andriy K. on 9/24/17.
//  Copyright © 2017 haawa. All rights reserved.
//

import Foundation
import RealmSwift

public class StrokesSet: Object {
    
    @objc public private(set) dynamic var count = 0
    public let frames = List<StrokeFrame>()
    
    public convenience init(count: Int,
                            frames: [StrokeFrame]) {
        
        self.init()
        self.count = count
        
        self.frames.removeAll()
        self.frames.append(objectsIn: frames)
        
    }
}

public class StrokeFrame: Object {
    
    @objc public private(set) dynamic var image = ""
    @objc public private(set) dynamic var timings: Double = 0
    
    public convenience init(image: String,
                            timings: Double) {
        self.init()
        self.image = image
        self.timings = timings
    }
}
