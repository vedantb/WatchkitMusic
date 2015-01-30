//
//  WatchKitInfo.swift
//  PlayThatSong
//
//  Created by Vedant Bhatt on 1/30/15.
//  Copyright (c) 2015 Vedant. All rights reserved.
//

import Foundation

let key = "FunctionRequestKey"

class WatchKitInfo {
    
    var replyBlock: ([NSObject : AnyObject]!) -> Void
    
    var playerRequest: String?
    
    init (playerDictionary: [NSObject : AnyObject], reply: ([NSObject : AnyObject]!) -> Void){
        
        if let playerDictionary = playerDictionary as? [String : String] {
            playerRequest = playerDictionary[key]
        } else {
            println("No Information Error")
        }
        
        replyBlock = reply
    }
    
}