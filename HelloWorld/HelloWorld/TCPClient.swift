//
//  TCPClient.swift
//  HelloWorld
//
//  Created by Елизавета Руцина on 02.04.16.
//  Copyright © 2016 Елизавета Руцина. All rights reserved.
//

import Foundation

class TCPManager {
    
    static var client:TCPClient = TCPClient(addr: "192.168.0.36", port: 1337)
    
    static func SetConnection() -> BooleanType {
        
        var (success, errmsg) = client.connect(timeout: 1)
        return success
    }
    
    static func SendDate(data: String) -> BooleanType {
        var (success, errmsg) = client.send(str: data )
        return success
    }
}