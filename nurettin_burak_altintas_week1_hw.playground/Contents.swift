import UIKit




class Garden
{
    var owner : String
    var flowers : [Flower]
    
    init(_ owner : String, _ flowers: [Flower]) {
        self.owner = owner
        self.flowers = flowers
    }
    
    func waterYourGarden()
    {
            print("Your garden is watering...")
    }
    
}

struct Flower {
    var name : String
    var familia : String
    var age : String
    var color : String
    
}
