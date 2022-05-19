import UIKit




class Garden
{
    //Variables
    var owner : String
    var flowers : [Flower]
    var purse : Int
    
    
    
    //Constructors
    init(_ owner : String, _ flowers: [Flower] , _ purse : Int) {
        self.owner = owner
        self.flowers = flowers
        self.purse = purse
        
        
    }
    
    //Functions
    
    func sayWelcome(){
        print("Hello my name is \(self.owner) and Welcome to my garden :)")
    }
    
    //Functions that waters your plants
    func waterYourGarden()
    {
            print("Your garden is being watered...")
    }
    
    //Function that sells your plants and updates the number of flowers in your garden
    func sellFlowers(flower_name : String, day : Day )
    {
        
        print("\(flower_name) is sold now.")
        
        var flower_price = 0
        
        if flower_name == "Begonia" {
            flower_price = 15
        }else if flower_name == "Hydrangea"{
            flower_price == 25
        }else if flower_name == "Rose" {
            if day == .valentinesDay
            {
                flower_price = 15
            }else{
                flower_price = 20
            }
        }else if flower_name == "Daisy" {
            switch (day)
            {
            case .mothersDay :
                flower_price = 5
            case .valentinesDay:
                flower_price = 25
            case .otherDay :
                flower_price = 20
            default :
                flower_price = 20
            }
            
        } else if flower_name == "Clove" {
            flower_price = 30
        }else{
            flower_price = 10
        }
        
        self.purse += flower_price
        
    }
    
    //Returns the total money of the owner of the garden
    func getPurse() -> Int
    {
        return self.purse
    }
    
    //Shows the current money that owner of the garden has.
    func showMyMoney()
    {
        print("Your current money is : \(self.purse) $.")
    }
    
    func showMyFlowers(){
        print("My flowers are: ")
        for i in flowers
        {
            print("\(i.name) ,")
        }
                    
    }
    
    
    
   
    
}

struct Flower {
    
    //Variables
    var name : String
    var familia : String
    var age : Int
    var color : String
    
    //Constructor
    init( name: String,  familia : String, age : Int, color: String) {
        self.name = name
        self.familia = familia
        self.age = age
        self.color = color
    }
    
    //Getter functions
    func getName()->String{
        return self.name
    }
    func getfamilia()->String{
        return self.familia
    }
    func getAge()->Int{
        return self.age
    }
    func getColor()->String{
        return self.color
    }
    
    //Setter functions
    mutating func setColor(_ newColor : String)
    {
        self.color = newColor
    }
    
    mutating func setAge(_ newAge : Int)
    {
        self.age = newAge
    }
    
    
    
    
}

//Day enum that categorizes days
enum Day
{
    case mothersDay
    case valentinesDay
    case otherDay
}



var begonia = Flower(name: "Begonia", familia: "Begoniacease", age: 2, color: "Red")
var daisy = Flower(name: "Daisy", familia: "Caricaceae", age: 1, color: "Yellow")
var hydrangea = Flower(name: "Hydrangea", familia: "Hydrangea", age: 2, color: "Purple")
var rose    = Flower(name: "Rose", familia: "Brugmansia", age: 1, color: "White")
var clove     = Flower(name: "Clove", familia: "Brugmansia", age: 1, color: "Red")


var all_flowers : [Flower] = [begonia]
all_flowers.append(daisy)
all_flowers.append(hydrangea)
all_flowers.append(rose)
all_flowers.append(clove)

var nurettins_garden : Garden = Garden("Nurettin Burak Altıntaş", all_flowers, 25)

nurettins_garden.sayWelcome()
nurettins_garden.waterYourGarden()

nurettins_garden.sellFlowers(flower_name: "Daisy", day: .mothersDay)
nurettins_garden.showMyMoney()

nurettins_garden.sellFlowers(flower_name: "Begonia", day: .otherDay)
nurettins_garden.showMyMoney()

nurettins_garden.sellFlowers(flower_name: "Rose", day: .valentinesDay)
nurettins_garden.showMyMoney()


hydrangea.setColor("White")
rose.setAge(2)

nurettins_garden.showMyFlowers()














