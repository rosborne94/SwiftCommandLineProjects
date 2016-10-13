//
//  calculator.swift
//  Tip Calculator macOS
//
//  Created by Riley Osborne on 10/10/16.
//  Copyright © 2016 Riley Osborne. All rights reserved.
//

import Foundation

var currentInput: String = ""
var billAmount = 25.00
var taxPercent = 0.06
var tipPercent = 0.00
var numberOfPeople = 1.00
var grandTotal = 1.00
var calcComplete: String = ""

class TipCalculator {
    var interactive = Interactive()
    var ioTip = Io()
    
    func calculation(){
        
        let tax = billAmount * ((taxPercent ) / 100)
        let total = tax + billAmount // Total amount with tax
        
        let tip = ((tipPercent) / 100) * total
        let tipTotal = tip + total
        grandTotal = tip / numberOfPeople + total  / numberOfPeople // Total amount with tip
        
        calcComplete = "The tax was \(tax). The total cost \(total) and the tip was \(tip). Total with tip is \(tipTotal)  Each person will pay $\(grandTotal)"
        
    }
    func consoleLineStuff () {
        
        
/*
         var currentInput: String
         
         ioTip.writeOutput("How much was your bill?")
         currentInput = ioTip.getInput()
         
         userAmount = Double(currentInput)

         
 */
        
        
        
        //User Amount
        ioTip.writeOutput("How much was your bill?")
        currentInput = ioTip.getInput()
        billAmount = Double(currentInput)!
        
    
        //User Number of People
        ioTip.writeOutput("How many people are splitting the bill?")
        currentInput = ioTip.getInput()
        numberOfPeople = Double(currentInput)!
        
        //User Tax
        ioTip.writeOutput("What's the tax in your state?")
        currentInput = ioTip.getInput()
        taxPercent = Double(currentInput)!
        
        //User Tip
        ioTip.writeOutput("What percent would you like to tip?")
        currentInput = ioTip.getInput()
        tipPercent = Double(currentInput)!
        
        calculation()
        
        //userGrandTotal
        ioTip.writeOutput("Here's the total: \(calcComplete)")
        
        
    }
    
}
