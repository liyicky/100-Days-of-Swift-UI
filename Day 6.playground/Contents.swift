import UIKit

var driving = {
    print("I'm eating a pickle")
}

driving()

var flying = { (place: String) in
    
    print("I'm going to blow up \(place) in my car")
}

flying("London")

let eating = { (thing: String ) -> String in
    return "I'm eating \(thing) with Susan Boile."
}

var x = eating("eggplant")
print(x)


func travel(action: () -> Void) {
    print("Here I go.")
    action()
    print("I did it.")
}

travel(action: driving)

travel {
    print("All by myself.")
}

func vacationTo(action: (String) -> Void) {
    print("I'm going to vacation to ")
    action("Greece")
    print("It was fun.")
}

vacationTo { (place: String) in
    print("I went to \(place)")
}

func destroy(action: (String) -> String) {
    print("I'm going to destroy ")
    let d = action("Tokyo")
    print(d)
    print("With my bare hands")
}

destroy { (city: String) -> String in
    return "I'm destorying \(city)!"
}

destroy {
    "I'm destorying \($0)"
}

func shootALazerAt(action: (String, Int) -> String) {
    print("I'm getting ready to shoot a lazer.")
    let d = action("New York hotdog man", 700)
    print(d)
    print("He is vaporized")
}

shootALazerAt {
    "\($0) is being incinerated by my lazer at \($1) degrees"
}

func swimTo() -> (String) -> Void {
    return {
        print("abba abba abba \($0)")
    }
}

var sexytime = swimTo()
sexytime("my pants")

