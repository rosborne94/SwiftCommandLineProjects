//
//  zoo.swift
//  Zoo Mangement System-RO
//
//  Created by Riley Osborne on 10/14/16.
//  Copyright © 2016 Riley Osborne. All rights reserved.
//

import Foundation

class  Zoo {
    var peopleInZoo = [People]()
    var animalsInZoo = [Animal]()
    let io = Io()
    
    func addPeople() {
        io.writeOutput("What is the persons name?")
        let getName = io.getInput()
        makePerson(getName: getName)
    }
    
    func makePerson(getName: String) {
        let name = getName
        let newPerson = People(personName: name)
        peopleInZoo.append(newPerson)
    }
    
    func listPeople() {
        for i in peopleInZoo {
            print("\(i.name!)")
        }
    }
    
    func addAnimal(){
        io.writeOutput("What is the animals species?")
        let getAnimalSpecies = io.getInput()
        makeAnimal(getAnimalSpecies: getAnimalSpecies)
    }

    func makeAnimal(getAnimalSpecies: String){
        let animSpecies = getAnimalSpecies
        let newAnimal = Animal(animalSpecies: animSpecies)
        animalsInZoo.append(newAnimal)
}
    func listAnimals() {
        for i in animalsInZoo{
            print("\(i.species!)")
        }
    }
    func removePeople(){
        print("Enter the name of the person:")
        let currentInput = io.getInput()
        for i in peopleInZoo {
            var count = 0
            if currentInput == i .name!   {
                peopleInZoo.remove(at: count)
            } else {
                count += 1
            }
        }
        print("People in zoo: \(peopleInZoo)")
    }
    func removeAnimal(){
        print("Enter the species of the animals:")
        let currentInput = io.getInput()
        for i in animalsInZoo {
            var count = 0
            if currentInput == i .species!   {
                animalsInZoo.remove(at: count)
            } else {
                count += 1
            }
        }
        print("Animals in zoo: \(animalsInZoo)")
    }
}




