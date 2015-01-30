//
//  InterfaceController.swift
//  PlayThatSong WatchKit Extension
//
//  Created by Vedant Bhatt on 1/29/15.
//  Copyright (c) 2015 Vedant. All rights reserved.
//

import WatchKit
import Foundation

let key = "FunctionRequestKey"

class InterfaceController: WKInterfaceController {

    @IBOutlet weak var songTitleLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    //Mark: IBActions
    
    @IBAction func previousSongButtonPressed() {
        
    }

    @IBAction func nextSongButtonPressed() {
        
    }
    
    @IBAction func playButtonPressed() {
        
        var info = [key : "SomeOtherValue"]
        
        WKInterfaceController.openParentApplication(info, reply: {(reply, error) -> Void in println("reply \(reply) error \(error)")
        })
    }
    
}
