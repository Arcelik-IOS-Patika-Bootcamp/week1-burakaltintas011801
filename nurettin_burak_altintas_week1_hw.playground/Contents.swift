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
    var age : Int
    var color : String
    
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
}
