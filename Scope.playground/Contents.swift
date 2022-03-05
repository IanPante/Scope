import UIKit

for _ in 0..<10 {
    let foo = 55
    print("The value of foo is \(foo)")
}
//print("The value of foo is \(foo)")
//constant \(foo) is in a local scope and cannot be called in a global scope

var x = 10
for _ in 0..<10 {
    x += 1
    print("The value of x is \(x)")
}
print("The final value of x is \(x)")
//value of x is originally in a global scope, when it was modified in a local scope, the final value was return to global

func greeting(greeting: String?, name: String) {
    if let greeting = greeting {
        print("\(greeting), \(name)")
    } else {
        print("Hello, \(name)")
    }
}

greeting(greeting: "Hi there", name: "Ian")
greeting(greeting: nil, name: "Fay")

class Car {
    var make: String
    var model: String
    var year: Int
    
    init(make: String, model: String, year: Int) {
        self.make = make
        self.model = model
        self.year = year
    }
}

struct User {
    var name: String
    var stepsToday: Int
    
    init(name: String, stepsToday: Int) {
        self.name = name
        self.stepsToday = stepsToday
    }
    
    init?(name: String?, stepsToday: Int?) {
        guard let name = name, let stepsToday = stepsToday else {
            return nil
        }
        self.name = name
        self.stepsToday = stepsToday
    }
}

let stepMaster = User(name: "StepMaster", stepsToday: 8394)
let activeSitter = User(name: "ActiveSitter", stepsToday: 9132)
let monsterWalker = User(name: "MonsterWalker", stepsToday: 7193)

let competitors = [stepMaster, activeSitter, monsterWalker]

func getWinner(competitors: [User]) -> User? {
    var topCompetitor: User?

    for competitor in competitors {
        if let top = topCompetitor {
            if competitor.stepsToday > top.stepsToday {
                topCompetitor = competitor
            }
        } else {
            topCompetitor = competitor
        }
    }
    return topCompetitor
}
