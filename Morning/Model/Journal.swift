//
//  Journal.swift
//  Morning
//
//  Created by Thomas on 05.08.26.
//

import Foundation
import SwiftData

@Model class Journal {
    
    var createDate: Date = Date.now
    var text:String
    
    init(text:String = "Nothing to say"){
        self.text = text
    }
    
}
