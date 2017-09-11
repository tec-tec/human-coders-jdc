//: Playground - noun: a place where people can play

import UIKit

var str = """
        sdljcvlkfsdjvkldfhsjv
            lsjvdsfjivhjfsov
        sldjvpisdfjvif
        ivhfihvoidsfhv
        jsvcoifjvpoife
        """

print(str)

let x: Int
if 1 == 1 {
    x = 2
} else {
    x=2
}

var villes = ["Paris","Bordeaux","Lyon","Marseille"]
// tableau de String

var tabVide = [String]()
let tabVide2: [String] = []
let tabVide3: Array<String> = []
let tabVide4 = Array<String>()
tabVide.count

tabVide.append("Hello")
tabVide.append("World")
tabVide.insert(" ", at: 1)

tabVide[0] = "Boujour"

// ... signifie inferieur ou egal
villes[...3]
// ... signifie strictement inferieur
villes[..<3]

var nbHabitants = ["Paris" : 2250000, "Bordeaux" : 239000, "Lyon" : 491268, "Marseille" : 850636]
// dictionnaire avec String en clé, Int en valeur

var dicoVide: [String: Int] = [:]
let keys = [String](nbHabitants.keys)

for (🗝, 👮🏿) in nbHabitants {
    print(🗝)
    print(👮🏿)
}

var peutPasser = true

guard peutPasser else { fatalError() }
print("je suis passé")

func manger(_ aliment: String = "Pain", avec ami: String = "Paul") {

    print("Je mange " + aliment + " avec " + ami)
}

manger("Pain", avec: "Paul")

func loadURL() -> (statusCode: Int, message: String) {
    //On essaye de charger une URL

    return (200, "OK")
}

let status = loadURL()
print(status.statusCode)

typealias GrosTruc = (unInt: Int, name:String)
let grosTruc = (unInt: 5, name: "Toto")
func test(unGrosTruc: (Int, String)) {

}

test(unGrosTruc: grosTruc)

let capitales = ["France" : "Paris", "USA" : "Washington", "Canada" : "Ottawa"]
let paris: String? = capitales["ukydjygd"]

let up = paris?.uppercased()

let str1 = "kjsdgcv,"
let intValue = Int(str1)

if intValue != nil {
    intValue! * 2
} else {
    print("error")
}

if let intValue = Int(str1) {
    intValue * 2
} else {

}

func something(with optional: String?) {

    guard let str = optional, let unwrapped = Int(str) else {
        print("Only numbers please")
        return
    }

    unwrapped * 2
}







func optionnalReturn(x: Int) -> Int? {

    if x%2 == 0 {
        return nil
    }

    return x
}







