//
//  io.swift
//  Zoo Mangement System-RO
//
//  Created by Riley Osborne on 10/11/16.
//  Copyright © 2016 Riley Osborne. All rights reserved.
//

import Foundation

class Io {
    
    func getInput() -> String {
        
        let keyboard = FileHandle.standardInput
        let inputData = keyboard.availableData
        let str = NSString(data: inputData, encoding: String.Encoding.utf8.rawValue)
        if let string = str {
            return string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        } else {
            return "Invalid input!"
        }
        
    }
    
    func writeOutput(_ output: String) {
        
        print("\(output)\n")
        
    }
    
}
