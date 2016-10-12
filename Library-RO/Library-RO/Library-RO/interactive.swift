//
//  interactive.swift
//  Library-RO
//
//  Created by Riley Osborne on 10/12/16.
//  Copyright © 2016 Riley Osborne. All rights reserved.
//

import Foundation

class Interactive {
    private var done: Bool = false
    private var currentInput: String = ""
    private var io = Io()
    
    func go(){
        
        while !done {
            
            //Ask the user for input
            io.writeOutput("\nInput?")
            currentInput = io.getInput()
            
            if currentInput == "q"{
                done = true
            } else {
                print("The input is: \(currentInput)")
            }
        }
        print("Exiting...")
        
        return
    }
    
}
