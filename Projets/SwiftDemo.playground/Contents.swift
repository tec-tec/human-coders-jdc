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

class Animal {
    var name: String
    var age: Int

    init(name: String = "Médor", age: Int = 0) {
        self.name = name
        self.age = age
    }
}

class Dog: Animal {

    var owner: String

    override init(name: String = "Médor", age: Int = 0) {
        owner = "Personne"
        super.init(name: name, age: age)

    }

    init(name: String = "Médor", age: Int = 0, owner: String) {
        self.owner = owner
        super.init(name: name, age: age)
    }
    func aboie() {

    }
}

struct Cat {
    lazy var name = "Félix"
    var age: Int = 0 {
        //Observers
        willSet {
            newValue
            age
        }

        didSet {
            oldValue
            age
        }
    }

    //Computed properties
    var humanAge: Int {
        return age * 7
    }
}


let aDog = Dog()
//aDog = Dog()
let aDog2 = aDog
aDog.age = 5
aDog.name
aDog.age
aDog2.age

var aCat = Cat()
let aCat2 = aCat
aCat.name
aCat.age = 5
let cat3 = aCat
aCat.age
aCat2.age
aCat.humanAge
aCat.age

private final class PrivateStruct {

    private var name: String = "toto"
    var age: Int = 0

    func internalMethod() {

    }

    fileprivate func doSomething() {

    }
}

private let testPrivate = PrivateStruct()
testPrivate.age




struct Flight {

    var flightNumber: String
    var status: FlightStatus

}

// Associated values : tuple de valeurs
enum FlightStatus {
    case onTime
    case delayed(delay: Int, reason: String)
    case cancelled(reason: String)

    var name: String {
        return "toto"
    }

    func doSomething() {

    }
}

var af84 = Flight(flightNumber: "AF84", status: .onTime)
af84.status = .delayed(delay: 10, reason: "Fog")

switch af84.status {
case .onTime:
    print("It's all right")
case .delayed(let delay, let reason) where delay < 10:
    print("It's not all right \(delay) \(reason)")
case .delayed:
    print("It's not all right")
case .cancelled:
    print("It's very sad")
}

//Enums raw value (Int, Float/Double, String, Character)
enum TransportType: String {
    case plane
    case bus
    case car
}

var transport = TransportType.bus
transport = .plane
transport.rawValue
let newTransport = TransportType(rawValue: "bus")!

enum TableStatus {
    case closed
    case reserved
    case open(duration: Int)

    var tableColor: UIColor {
        switch self {
        case .open(let duration) where duration < 10:
            return UIColor.blue
        case .open(let duration) where duration < 20:
            return UIColor.green
        case .open(let duration) where duration < 30:
            return UIColor.red
        case .closed:
            return UIColor.gray
        case .reserved:
            return UIColor.yellow
        default:
            return UIColor.black
        }
    }
}

let aTableStatus = TableStatus.closed

// 2 états (rien ou qqchose)
// méthode "déballe" qui retourne le qqchose

postfix operator &!

enum Optionnel<T>: ExpressibleByNilLiteral {
    case rien
    case qqChose(truc: T)

    init() {
        self = .rien
    }

    init(nilLiteral: ()) {
        self = .rien
    }

    static postfix func &!(o: Optionnel<T>) -> T {
        switch o {
        case .rien:
            fatalError("T'as déballé un optionnel nil, je suis faché.")
        case .qqChose(let truc):
            return truc
        }
    }
}

var unOptionnel: Optionnel<Int> = nil
unOptionnel = .qqChose(truc: 5)
unOptionnel&!
//unOptionnel.deballe()

enum FormError: Error {
    case notSet
    case notEnoughCharacter(tf: UITextField)
}

func somethingThatThrows(shouldThrow: Bool) throws -> Int {
    if shouldThrow {
        throw FormError.notSet
    } else {
        return 10
    }
}

func aMethod() throws {
    try somethingThatThrows(shouldThrow: true)
}

do {
    try aMethod()
} catch FormError.notEnoughCharacter(let tf) {
    tf.backgroundColor = UIColor.red
} catch FormError.notSet {

} catch {

}

if let result = try? somethingThatThrows(shouldThrow: false) {

}

let result2 = try! somethingThatThrows(shouldThrow: false)


enum EditState {
    case isEditing, isDisplaying
}

struct DisplayControlelr {

    var displayMode: EditState {
        didSet {
            switch displayMode {
            case .isEditing:
                print("Show edit UI")
            case .isDisplaying:
                print("Show display UI")
            }
        }
    }
}

var controller = DisplayControlelr(displayMode: .isEditing)
controller.displayMode = .isDisplaying

class Client {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }

    deinit{
        print("\(name) is being deinitialized")
    }
}

class CreditCard {
    let number: UInt
    unowned let client: Client
    init(number: UInt, client: Client) {
        self.number = number
        self.client = client
        print("Card number \(number) is being initialized")
    }

    deinit{
        print("Card number \(number) is being deinitialized")
    }
}

var paul: Client? = Client(name: "Paul")
let card = CreditCard(number: 1234_5678_90, client: paul!)
paul?.card = card

paul = nil
//card.client

protocol Flying {
    func fly()
    var maxFlyingDistance: Int { get }
}

extension Flying {

    func fly() {
        print("I'm flying")
    }

    var maxFlyingDistance: Int {
        return 0
    }
}

extension Cat: Flying {
    func fly() {
        print("I'm a flying cat. I can fly for \(maxFlyingDistance)m.")
    }

    var maxFlyingDistance: Int {
        return 20 - age
    }
}

extension Dog: Flying {
    func fly() {
        print("I'm a flying dog. I can fly for \(maxFlyingDistance)m.")
    }

    var maxFlyingDistance: Int {
        return 10 - age
    }
}

let flyingArray: [Flying] = [aDog, aCat, aDog2]

for trucVolant in flyingArray {

}

extension Client: Flying {

}

paul?.fly()

struct Restaurant: Codable {

    var name: String
    var address: String
    var note: Int

    var isVisited: Bool
    var lastVisit: Date?
}

let mcDo = Restaurant(name: "McDo", address: "Somewhre", note: 2, isVisited: true, lastVisit: nil)
let mcDo2 = Restaurant(name: "McDo2", address: "Somewhre", note: 2, isVisited: true, lastVisit: Date())

let allRestaurant = [mcDo, mcDo2]

let encoder = JSONEncoder()
let encodedData = try? encoder.encode(allRestaurant)
print(String(data: encodedData!, encoding: .utf8)!)

let restos = try? JSONDecoder().decode([Restaurant].self, from: encodedData!)
print(restos!)



















