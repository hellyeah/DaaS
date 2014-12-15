//
//  DetailViewController.swift
//  DaaS
//
//  Created by David Fontenot on 12/14/14.
//  Copyright (c) 2014 HackMatch. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        
//        Parse.setApplicationId("RctpMTJQ1oMw0FYc1pyPfWxaFzdJIh1WVdvGCj6V",
//            clientKey: "lVI3O2UYRK2aiXysxm1KI6qRLWrrYdrracqrv9yZ")
//        
//        var gameScore = PFObject(className: "GameScore")
//        gameScore.setObject(1337, forKey: "score")
//        gameScore.setObject("Sean Plott", forKey: "playerName")
//        gameScore.saveInBackgroundWithBlock {
//            (success: Bool!, error: NSError!) -> Void in
//            if (success != nil) {
//                NSLog("Object created with id: \(gameScore.objectId)")
//            } else {
//                NSLog("%@", error)
//            }
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

