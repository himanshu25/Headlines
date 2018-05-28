//
//  ArticleListViewModel.swift
//  Headlines
//
//  Created by Himanshu on 05/28/18.
//  Copyright © 2018 Himanshu. All rights reserved.
//

import Foundation


struct ArticleListViewModel {
    
    var title :String? = "Articles"
    var articles :[ArticleViewModel] = [ArticleViewModel]()
}

extension ArticleListViewModel {
    
    init(articles :[ArticleViewModel]) {
        self.articles = articles
    }
    
}

struct ArticleViewModel {
    
    var title :String
    var description :String
}

extension ArticleViewModel {
    
    init(article :Article) {
        self.title = article.title
        self.description = article.description
    }
}
