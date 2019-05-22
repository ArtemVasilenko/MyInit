import Foundation

//class User {
//    var name: String = ""
//    var age: Int = 0
//}
//
//var vasya = User()
//vasya.name = "Vasilij"
//print(vasya.name)

//
//class User {
//    var name: String
//    var age: Int
//
//    init() {
//        age = 30
//        name = "Vasilij"
//    }
//
//    init(name: String, age: Int) {
//        self.age = age
//        self.name = name
//    }
//
//    func getInfo() {
//        print("User name \(name), user age \(age)")
//    }
//}
//
//var vasya = User()
//vasya.getInfo()
//
//var artem = User(name: "Artem", age: 32)
//artem.getInfo()


//class User {
//    var name: String
//    var age: Int
//
//    convenience init() { //удобный/ делегирование инициализации
//        self.init(name: "Holodov", age: 50)
//    }
//
//    init(name: String, age: Int) {
//        self.age = age
//        self.name = name
//    }
//
//
//
//    func getInfo() {
//        print("User name \(name), user age \(age)")
//    }
//}
//
//var alex = User()
//alex.getInfo()


//class User {
//    var name: String
//    var age: Int
//    static var sex: String = "Man"
//
//    init?(name: String, age: Int) {
//        self.age = age
//        self.name = name
//
//        if age < 0 {
//            return nil
//        }
//
//        if name == "vasya" {
//            return nil
//        }
//    }
//
//    init(name: String, age: Int, sex: String) {
//        self.name = name
//        self.age = age
//        User.sex = sex
//    }
//
//    deinit {
//        print("clear")
//    }
//
//    func getInfo() {
//        print("User name \(name), user age \(age)")
//    }
//}
//
//var alex = (User(name: "vasya", age: -50) ?? User(name: "", age: 0))!
//alex.getInfo()

class User {
    var name: String
    var age: Int
    
     init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init(name: String) {
        self.init(name: name, age: 50)
    }
    
    required init() { //обязательный инит для наследников
        name = "Maxim"
        age = 23
    }
    
    deinit {
        print("clear")
    }
    
    func getInfo() {
        print("User name \(name), user age \(age)")
    }
}

var alex: User?
alex = User(name: "vasya", age: 30)
alex!.getInfo()
alex = nil
alex?.getInfo()


class Man: User {
    var razmerChlena: Int
    
    init(name: String, age: Int, razmerChlena: Int) {
        self.razmerChlena = razmerChlena
        super.init(name: name, age: age)
    }
    
    required init() {
        fatalError("init() has not been implemented")
    }
    
    override func getInfo() {
        print("User name \(name), user age \(age), pennis size \(razmerChlena)")
        
    }
}

var ignat = Man(name: "Ignat", age: 97, razmerChlena: -20)
ignat.getInfo()


var petya = User(name: "Petr")
petya.getInfo()

var maxim = User()
maxim.getInfo()
