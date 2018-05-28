//
//  Article.swift
//  Headlines
//
//  Created by Himanshu on 05/28/18.
//  Copyright © 2018 Himanshu. All rights reserved.
//

import Foundation

class Article {
    
    var title :String
    var description :String
    
    init(title :String, description: String) {
        self.title = title
        self.description = description
    }
    
    init?(dictionary :JSONDictionary) {
        
        guard let title = dictionary["title"] as? String,
            let description = dictionary["description"] as? String else {
               return nil
    }
        self.title = title
        self.description = description
}

}
