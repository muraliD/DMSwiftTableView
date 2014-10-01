//
//  ViewController.swift
//  DMSwiftTableView
//
//  Created by MuraliDadi on 23/09/14.
//  Copyright (c) 2014 Nunet3. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!

    
    var mysourceArray:NSMutableArray=["Apple","Banana","Orange","Mango"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.sectionIndexBackgroundColor=UIColor.clearColor()
        myTableView.dataSource=self
        myTableView.delegate=self
       
    }

   /* UITableView Delegate and DataSource Methods*/
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mysourceArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        var  cell:UITableViewCell! = tableView.dequeueReusableCellWithIdentifier("cell") as? UITableViewCell
        
        if (cell == nil)
        {
            let nib:Array = NSBundle.mainBundle().loadNibNamed("DMCell", owner: self, options: nil)
            cell = nib[0] as? UITableViewCell
            //cell.selectionStyle=UITableViewCellSelectionStyle.None
            
        }
       var label : UILabel? = cell.viewWithTag(100) as? UILabel;
        label?.text=mysourceArray[indexPath.row] as? NSString
        label?.textColor=UIColor.greenColor();
        label?.font=UIFont.boldSystemFontOfSize(18);
        cell.accessoryType=UITableViewCellAccessoryType.DetailDisclosureButton
        return cell;
    }
  func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
    return 40
    }
    
   func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        
        self.performSegueWithIdentifier("DetailSegue", sender: mysourceArray[indexPath.row] as? NSString)
        
    }
   
      override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier=="DetailSegue"
        {
           println("segue")
            let dVc=segue.destinationViewController as DetailViewController
           dVc.detailValue=sender as? NSString
            
        }
    }

}

