//
//  DetailViewController.swift
//  DMSwiftTableView
//
//  Created by MuraliDadi on 24/09/14.
//  Copyright (c) 2014 Nunet3. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var detailValue:NSString?
    @IBOutlet weak var detailLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor=UIColor.grayColor()
        detailLbl.text=detailValue

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
