
protocol CanFly {
    func fly()
}


class Bird {
    
    var isFemale = true
    
    func layEgg () {
        if isFemale {
            print ("new bird in shell")
        }
    }
//
//    func fly() {
//        print("lifts off into the sky")
//    }
}


class Eagle : Bird, CanFly {
    func fly() {
        print("eagle flaps its wings and lifts off into the sky")
    }
    
    
    func soar() {
        print("eagle glides")
    }
    
    
    
}

class Penguin : Bird {
    
    func swim() {
        print("penguins swims")
    }
}

struct FlyingMuseum {
    
    func flyingDemo (flyingObject : CanFly) {
        flyingObject.fly()
    }
}

struct Airplane : CanFly {
    func fly() {
        print("airplans uses its engine to lift")
    }
}

let myEagle = Eagle()

let myPen = Penguin()

let museum = FlyingMuseum()

museum.flyingDemo(flyingObject: myEagle)


