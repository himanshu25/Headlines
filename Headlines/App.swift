//
//  App.swift
//  Headlines
//
//  Created by Himanshu on 05/28/18.
//  Copyright © 2018 Himanshu. All rights reserved.
//

import Foundation
import UIKit

class App {
    
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let navigationController :UINavigationController

    init(nav :UINavigationController) {
        navigationController = nav
        guard let articleListTVC = navigationController.viewControllers.first as? ArticleListTableViewController else {
            fatalError("ArticleListTableViewController does not exist")
        }
        articleListTVC.didSelect = showArticleDetails
        articleListTVC.addArticleTapped = showAddArticle
        
    }
    
    func showAddArticle() {
        let addArticleNC = storyboard.instantiateViewController(withIdentifier: "addArticleVC") as! AddArticleViewController
        navigationController.pushViewController(addArticleNC, animated: true)
    }
    
    func showArticleDetails(articleViewModel :ArticleViewModel) {
        let articleDetailVC = storyboard.instantiateViewController(withIdentifier: "articleDetailVC") as! ArticleDetailsViewController
        articleDetailVC.articleDetailViewModel = ArticleDetailViewModel(articleViewModel: articleViewModel)
        navigationController.pushViewController(articleDetailVC, animated: true)
    }
    
}





