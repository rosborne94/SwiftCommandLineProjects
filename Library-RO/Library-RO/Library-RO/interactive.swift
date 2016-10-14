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
    let library = Library()
    
    func go(){
        
        while !done {
            
            //Ask the user for input
            io.writeOutput("\nPress m for a list of available commands.")
            currentInput = io.getInput()
            
            if currentInput == "q"{
                done = true
            } else if currentInput == "Current books" {
                    print(library.libraryBooks)
            } else if currentInput == "Checked out books"{
                print(library.checkedOutBooks)
            } else if currentInput == "Add books" {
                library.addBooks()
            } else if currentInput == "Check out" {
                library.checkOutBooks()
            } else if currentInput == "Check in" {
                library.checkInBooks()
            } else if currentInput == "m" {
                io.writeOutput("Use command: *Current books* without quotes to check the status of currently available books.")
                io.writeOutput("Use command: *Checked out books* without quotes to check the status of currently checked books.")
                io.writeOutput("Use command: *Add books* without quotes to add books into the library.")
                io.writeOutput("Use command: *Check out* without quotes to check a book out of the library.")
                io.writeOutput("Use command: *Check in* without quotes to check a book into the library.")
                io.writeOutput("Use command: *q* without quotes to quit.")
            } else {
                print("The input is: \(currentInput)")
            }
        }
        print("Exiting...")
        
        return
    }
    
}
