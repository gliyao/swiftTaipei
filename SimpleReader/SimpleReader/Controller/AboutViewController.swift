//
//  AboutViewController.swift
//  SimpleReader
//
//  Created by Liyao on 2014/10/3.
//  Copyright (c) 2014年 HaveFun. All rights reserved.
//

import UIKit

@IBDesignable class AboutViewController: UIViewController {


    @IBInspectable @IBOutlet weak var authorImageView: UIImageView!
    
    @IBOutlet weak var authorNameLabel: UILabel!
    
    @IBOutlet weak var bView: UIView!
    @IBInspectable var aColor: UIColor = UIColor.clearColor(){
        didSet{
            updateUI()
        }
    }
    
    func updateUI(){
        bView.backgroundColor = aColor
        self.view.backgroundColor = aColor
    }
    
    
    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1. Change author name to your name
//        authorNameLabel.text = "Liyao Chen"
        
        // 2. Add a border to authorImageView
        authorImageView.layer.borderWidth = 2
        authorImageView.layer.borderColor = UIColor.blueColor().CGColor
        
        // 3. Make authorImageView circular
        authorImageView.layer.cornerRadius = 20
        
        // 4. Make authoerImageView as circle
        let halfWidth = CGRectGetWidth(authorImageView.bounds) / 2;
        authorImageView.layer.cornerRadius = halfWidth
        authorImageView.clipsToBounds = true
        
        // 5. Generate author from Class SMAuthor with your own name
        var me = SMAuthor(firstName: "Liyao", lastName: "Chen")
        authorNameLabel.text = me.fullName()
    }
}
