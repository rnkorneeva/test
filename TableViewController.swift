//
//  TableViewController.swift
//  test
//
//  Created by Irina Korneeva on 28/07/16.
//  Copyright © 2016 Irina. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("theCell", forIndexPath: indexPath)
        cell.textLabel?.text = "\(indexPath.row + 1)) ksjld"
        return cell
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            if identifier == "displayNote" {
                let displayNoteViewController = segue.destinationViewController as! displayViewController
                let indexPath = tableView.indexPathForSelectedRow!
                let curCell = tableView.cellForRowAtIndexPath(indexPath)! as UITableViewCell
                displayNoteViewController.content = curCell.textLabel!.text!
            }
        }
    }
    @IBAction func unwindToListNotesViewController(segue: UIStoryboardSegue) {
        
    }

 

}
