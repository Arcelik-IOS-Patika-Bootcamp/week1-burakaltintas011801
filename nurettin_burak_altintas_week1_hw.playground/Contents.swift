import UIKit




class Garden
{
    //Variables
    var owner : String
    var flowers : [Flower]
    
    //Constructors
    init(_ owner : String, _ flowers: [Flower]) {
        self.owner = owner
        self.flowers = flowers
        
        
    }
    
    //Functions
    
    //Functions that waters your plants
    func waterYourGarden()
    {
            print("Your garden is watering...")
    }
    
    //Function that sells your plants and updates the number of flowers in your garden
    func sellFlowers(flower_name : String)
    {
        print("\(flower_name) is sold now.")
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
