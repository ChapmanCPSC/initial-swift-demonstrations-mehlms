// VARIADIC PARAMETERS
print("this", "is", 1, 2.0)

// FUNCTIONS
func add(x: Float, y: Float) -> Float {
    return x + y;
}
let sum = add(2, y: 3)

// EXTERNALIZED PARAMETERS
func addExternalized(x: Float, _ y: Float) -> Float {
    return x + y;
}
let sumExternalized = addExternalized(2, 3)

// DEFAULT PARAMETERS
func addDefault(x: Float = 0, y: Float = 0) -> Float {
    return x + y;
}
let sumDefault = addDefault()

// VARIADIC FUNCTION
func addVariadic(x : Float...) -> Float {
    var sum : Float = 0
    for p in x {
        sum += p
    }
    return sum
}
let sumVariadic = addVariadic(2,3,4)

// CHECK TYPE
sumVariadic.dynamicType

// TUPLES
let tup = ("First bit", "Second Bit")
print (tup.0, tup.1)

// COMPUTED INITIALIZERS
let someConstant = 4
var isEven : Bool = {
    if someConstant % 2 == 0 {
        return true
    } else {
        return false
    }
}()

//Setter Observers
class Person {
    var name : String = "" {
        willSet{
            print ("About to set person name to \(newValue)")
        }
        didSet {
            print ("Just changed person name from \(oldValue) to \(self.name)")
        }
    }
}

var p = Person()
p.name = "Ryan Burnzzzzzz"
