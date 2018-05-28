//
//  AddArticleViewModel.swift
//  Headlines
//
//  Created by Himanshu on 05/28/18.
//  Copyright © 2018 Himanshu. All rights reserved.
//

import Foundation

struct AddArticleViewModel {
    
    var title = Dynamic("")
    var description = Dynamic("")
}

extension AddArticleViewModel {
    
    init(article :Article) {
        self.title = Dynamic<String>(article.title)
        self.description = Dynamic<String>(article.description)
    }
    
}
