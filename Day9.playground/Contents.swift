import UIKit

var greeting = "Hello, playground"

struct Person {
    var name: String
    
    init() {
        name = "???"
        print("Creating a new person")
    }
}

var person = Person()
person.name = "Jasor"
print(person.name)


struct Dinosaur {
    var name: String
    
    init(name: String) {
        self.name = name
        print("\(name) has gone extinct")
    }
}

var dino = Dinosaur(name: "Durpasaurus")

struct Building {
    var name: String
    lazy var dinosaur = Dinosaur(name: "Bigdickasaurus")
    
    init(name: String) {
        self.name = name
        print("\(name) is a building")
    }
}

var tower = Building(name: "Smith's Tower of Poo")
tower.dinosaur

