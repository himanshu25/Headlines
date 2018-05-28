//
//  DynamicTypes.swift
//  Headlines
//
//  Created by Himanshu on 05/28/18.
//  Copyright © 2018 Himanshu. All rights reserved.
//

import Foundation

class Dynamic<T> {
    
    var bind :(T) -> () = { _ in }
    
    var value :T? {
        didSet {
            bind(value!)
        }
    }
    
    init(_ v :T) {
        value = v
    }
    
}


