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
    
    //Functions that waters your plants
    func waterYourGarden()
    {
            print("Your garden is watering...")
    }
    
    //Function that sells your plants and updates the number of flowers in your garden
    func sellFlowers(flower_name : String, day : Day )
    {
        
        print("\(flower_name) is sold now.")
        
        var flower_price = 0
        
        if flower_name == "Begonya" {
            flower_price = 15
        }else if flower_name == "Ortanca"{
            flower_price == 25
        }else if flower_name == "Gül" {
            if day == .valentinesDay
            {
                flower_price = 15
            }else{
                flower_price = 20
            }
        }else if flower_name == "Papatya" {
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
            
        } else if flower_name == "Karanfil" {
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

enum Day
{
    case mothersDay
    case valentinesDay
    case otherDay
}
