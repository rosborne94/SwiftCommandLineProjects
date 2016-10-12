//
//  interactive.swift
//  Tip Calculator macOS
//
//  Created by Riley Osborne on 10/10/16.
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
            io.writeOutput("\nWhat is your command? q for quit s for start.")
            currentInput = io.getInput()
            
            if currentInput == "q"{
                done = true
            } else if currentInput == "s" {
                
                // Ask questions, bill amt, tip pct
               // var tipCalc = TipCalculator.consoleLineStuff(<#T##TipCalculator#>)
                let tipCalc = TipCalculator()
                tipCalc.consoleLineStuff()
                tipCalc.calculation()
                
                
            } else {
                print("The input is: \(currentInput)")
        }
        }
        print("Exiting...")
        
        return
    }
    
}
