//
//  Library.swift
//  Library-RO
//
//  Created by Riley Osborne on 10/12/16.
//  Copyright © 2016 Riley Osborne. All rights reserved.
//

import Foundation

class Library {
    let io = Io()
    
    var libraryBooks = ["The Hobbit", "The Fellowship of the Ring", "The Two Towers", "The Return of the King"]
    var checkedOutBooks = [String]()
    
    func addBooks () {
        print("Enter the title of the book:")
        let currentInput = io.getInput()
        libraryBooks.append(currentInput)
        print(libraryBooks)
    }
    func checkOutBooks(){
        print("Enter the title of the book:")
        let currentInput = io.getInput()
        for i in libraryBooks {
            var count = 0
            if currentInput.uppercased() == i.uppercased(){
                libraryBooks.remove(at: count)
                checkedOutBooks.append(i)
            } else {
                count += 1
            }
        }
        print("Checked out books: \(checkedOutBooks)")
    }
    func checkInBooks(){
        print("Enter the title of the book:")
        let currentInput = io.getInput()
        for i in checkedOutBooks {
            var count = 0
            if currentInput.uppercased() == i.uppercased(){
                checkedOutBooks.remove(at: count)
                libraryBooks.append(i)
            } else {
                count += 1
            }
        }
        print("Checked in books: \(libraryBooks)")
    }
}
