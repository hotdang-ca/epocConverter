//
//  ViewController.swift
//  EpochConverter
//
//  Created by James Perih on 2014-12-09.
//  Copyright (c) 2014 Hot Dang Interactive. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTextFieldDelegate {

    @IBOutlet weak var timeStampAsString: NSTextField!
    @IBOutlet weak var friendlyDateAsString: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeStampAsString.delegate = self
        // Do any additional setup after loading the view.

    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func convertEpochToFriendly(sender: AnyObject) {
        self.friendlyDateAsString.stringValue = stringFromEpochDouble(epochDouble: self.timeStampAsString.doubleValue)
    }
    
    func controlTextDidChange(_ obj: Notification) {
        let textField = (obj.object as! NSTextField)
        
        let fieldValue = textField.stringValue
        
        if (fieldValue == "") {
            self.friendlyDateAsString.stringValue = ""
            return
        }
        
        let fieldValueAsDouble = Double(fieldValue)
        
        self.friendlyDateAsString.stringValue = stringFromEpochDouble(epochDouble: fieldValueAsDouble ?? 0)
    }
}

