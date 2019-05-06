//
//  Message.swift
//  DropDiscuss
//
//  Created by Avijeet Sachdev on 5/5/19.
//  Copyright © 2019 Avijeet Sachdev. All rights reserved.
//

import Foundation

class Message {
    private var _content: String
    private var _senderID: String
    
    var content: String {
        return _content
    }
    
    var senderID: String {
        return _senderID
    }
    
    init(content: String, senderID: String) {
        self._content = content
        self._senderID = senderID
    }
}
