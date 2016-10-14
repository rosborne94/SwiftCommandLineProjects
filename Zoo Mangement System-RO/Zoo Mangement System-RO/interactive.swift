//
//  interactive.swift
//  Zoo Mangement System-RO
//
//  Created by Riley Osborne on 10/11/16.
//  Copyright © 2016 Riley Osborne. All rights reserved.
//

import Foundation

class Interactive {
    private var done: Bool = false
    private var currentInput: String = ""
    private var io = Io()
    var zoo = Zoo()
    
    func go(){
        
        while !done {
            
            //Ask the user for input
            io.writeOutput("Press q for quit. Press h for the menu.")
            currentInput = io.getInput()
            
            if currentInput == "q"{
                done = true
            } else if currentInput == "h" {
                io.writeOutput("Welcome to the zoo management system! Below will be instructions on how to use the system.")
                io.writeOutput("Type *Add person* to begin adding a person.")
                io.writeOutput("Type *Remove person* to remove a person.")
                io.writeOutput("Type *View people* to view the people.")
                io.writeOutput("Type *Add animal* to begin adding an animal.")
                io.writeOutput("Type *Remove animal* to remove an animal.")
                io.writeOutput("Type *View animals* to view the animals.")
            } else if currentInput == "Add person" {
                zoo.addPeople()
                
            } else if currentInput == "Remove person" {
               zoo.removePeople()
            } else if currentInput == "View people" {
                zoo.listPeople()
            } else if currentInput == "Add animal"{
                zoo.addAnimal()
            } else if currentInput == "Remove animal" {
                zoo.removeAnimal()
            } else if currentInput == "View animals"{
                zoo.listAnimals()
            }
            else {
                print("The input is: \(currentInput)")
            }
        }
        print("Exiting...")
        
        return
    }
    
}
