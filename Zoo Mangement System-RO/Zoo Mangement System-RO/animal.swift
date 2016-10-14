//
//  animal.swift
//  Zoo Mangement System-RO
//
//  Created by Riley Osborne on 10/11/16.
//  Copyright © 2016 Riley Osborne. All rights reserved.
//

import Foundation

//Listing animal class and subclasses for each animal type

class Animal {
   var io = Io ()
    var species: String?
    
    init(animalSpecies: String){
        self.species = animalSpecies
    }

    
}
