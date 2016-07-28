//
//  displayViewController.swift
//  test
//
//  Created by Irina Korneeva on 28/07/16.
//  Copyright © 2016 Irina. All rights reserved.
//

import UIKit

class displayViewController: UIViewController {
    var content = ""
    @IBOutlet weak var noteLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        noteLabel.text = content
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            if identifier == "Cancel" {
                print("Cancel button tapped")
            }
        }
    }
}
