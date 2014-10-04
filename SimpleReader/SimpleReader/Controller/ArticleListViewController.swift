//
//  ArticleListViewController.swift
//  SimpleReader
//
//  This viewController is practice list article from JSON data.
//  The data source(newYorkTimes.json) is from NYTimes API - http://developer.nytimes.com/docs/times_newswire_api/
//
//  Created by Liyao on 2014/10/3.
//  Copyright (c) 2014年 HaveFun. All rights reserved.
//
//

import UIKit

class ArticleListViewController: UITableViewController
{
    let kCellId = "articleCell"
    
    
    // MARK: Properties
    var docs : NSArray = []
    
    // MARK: View controller lifycele
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Read JSON file
        let path = NSBundle.mainBundle().pathForResource("newYorkTimes", ofType: "json")
        let jsonData = NSData.dataWithContentsOfFile(path!, options: .DataReadingMappedIfSafe, error: nil)
        var jsonResult: NSDictionary = NSJSONSerialization.JSONObjectWithData(jsonData, options: NSJSONReadingOptions.MutableContainers, error: nil) as NSDictionary
        var response = jsonResult["response"] as NSDictionary
        
        docs = response["docs"] as NSArray
        
        // Log doc.count make sure we read JSON file correctly.
        println("We have \(docs.count) articles.")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if(segue.identifier == "openArticle")
        {
            // Finding source cell and its indexPath
            var cell = sender as UITableViewCell
            var indexPath = self.tableView .indexPathForCell(cell)!

            // Copy fetch article we do it before (in cellForRowAtIndexPath)
            var article = docs[indexPath.row] as NSDictionary
            var snippet = article["snippet"] as String
            var web_url = article["web_url"] as String
            var pub_date = article["pub_date"] as String

            
            // Pass param for ArticleViewController
            var vc = segue.destinationViewController as ArticleViewController
            vc.snippet = snippet
            vc.web_url = web_url
        }
    }

    // MARK: Delegate Pattern
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    // Tell tableView how many airtiles we have.
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return docs.count
    }
    
    // MARK: - Table view dalegation
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Get reuse cell instance in tableView
        var cell : UITableViewCell = tableView .dequeueReusableCellWithIdentifier(kCellId, forIndexPath: indexPath) as UITableViewCell
        
        // Configure cell with docs dat
        // 1. Get target article in docs with indexPath
        var article = docs[indexPath.row] as NSDictionary
        
        // 2. Fectch each key-value we want (You may try other fields
        var snippet = article["snippet"] as String
        var web_url = article["web_url"] as String
        var pub_date = article["pub_date"] as String
        
        // 3. Setup date in cell
        cell.textLabel?.text = snippet
//        cell.textLabel?.text = "\(indexPath.row)" // snippet take to many words, try show index at textLabel
        cell.detailTextLabel?.text = pub_date
        
        return cell
    }
}
