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
            io.writeOutput("\nWhat is your command? h for help, q for quit, or s for start.")
            currentInput = io.getInput()
            
            if currentInput == "q"{
                done = true
            } else if currentInput == "h" {
                io.writeOutput("Welcome to the help menu!")
                io.writeOutput("The letter s will start the tip calcualtor. The letter q will stop the program.")
                io.writeOutput("Once started you will be prompted for the total of your bill.")
                io.writeOutput("How many people are splitting.")
                io.writeOutput("What the tax is in your state(just enter the digit).")
                io.writeOutput("The percent you would like to tip(just enter the digit)")
                io.writeOutput("When the steps are finished you will recieve a message that contains a breakdown of your total bill.")
            }
            
            else if currentInput == "s" {
                
                // Ask questions, bill amt, tip pct
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
