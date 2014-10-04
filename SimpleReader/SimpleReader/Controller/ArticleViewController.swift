//
//  ArticleViewController.swift
//  SimpleReader
//
//  Created by Liyao on 2014/10/4.
//  Copyright (c) 2014年 HaveFun. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {
    var snippet : String = ""
    var web_url : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("We got snippet = \(snippet)")
        println("We got web_url = \(web_url)")
    }
    
    func setSnippet(snippet : String)
    {
        self.snippet = snippet
    }
    
    func setWebUrl(web_url : String)
    {
        self.web_url = web_url
    }
}
