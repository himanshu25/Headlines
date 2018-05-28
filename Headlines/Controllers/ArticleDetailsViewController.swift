//
//  ArticleDetailsViewController.swift
//  Headlines
//
//  Created by Himanshu on 05/28/18.
//  Copyright © 2018 Himanshu. All rights reserved.
//

import Foundation
import UIKit

class ArticleDetailsViewController : UIViewController {
    
    var articleDetailViewModel :ArticleDetailViewModel! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = self.articleDetailViewModel.articleViewModel.title
    }
}
