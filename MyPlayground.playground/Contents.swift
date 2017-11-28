//: Playground - noun: a place where people can play

import UIKit

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest=0
var largestKind=""
for (kind,numbers) in interestingNumbers{
    for number in numbers {
        if number>largest
        {
            largest = number
            largestKind = kind
            
        }
        
    }
}
print(largest,largestKind)

func Greetng(n name: String , _ day:String)-> String{
     return "Hello \(name), today is \(day)."
}

Greetng(n: "hibu" ,"sunday")

func minMax(array:[Int])-> (min:Int, max:Int)?{
    var minValue = array[0]
    var maxValue = array[0]
    
    for i in array[0..<array.count]{
        if i<minValue
        {
            minValue = i
        }
        else
        {
            maxValue = i
        }
    }
    return (minValue, maxValue)
}

if let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
 {
print("min is \(bounds.min) and max is \(bounds.max)")
}

func mean(_ numbers: Double...)-> Double{
    var total: Double=0
    for i in numbers{
        total+=i
    }
    return total/Double(numbers.count)
}

print(mean(1,2,3,4,5))



func swap(_ a: inout Int, _ b: inout Int)-> String{
    let temporaryA = a
    a = b
    b = temporaryA
    return "a is \(a) and b is \(b)"
}

var a=45
var b=3
print(swap(&a,&b))


func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

func chooseStepFunction(backward: Bool)-> (Int)->Int{
    
    func stepBackward(input:Int)-> Int{
        return input-1
        
    }
    func stepForward(input:Int)-> Int{
        return input+1
    }
        
    return backward ? stepBackward : stepForward
    
    }

var currentValue = 5
var moveCloserToZero = chooseStepFunction(backward: currentValue>0)

while currentValue != 0 {
    print(currentValue)
    currentValue = moveCloserToZero(currentValue)
}
print("Zero!!!")

func hasAnyMatches (list:[Int], condition:(Int)->Bool )-> Bool {
    for i in list{
        
        if condition(i){
            print(i)
            return true
        }
       
    }
     return false
}

func isLessThan(number:Int) -> Bool {
    return number<10
}

hasAnyMatches(list:[11,5,11,78,6],condition:isLessThan)


let numberss=[3,5,2,7,2]
numberss.sorted()

class namedShape{
    var numberOfSides: Int=0
    var name : String
    
    init(name:String){
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "this is a \(name) with \(numberOfSides) sides"
    }

}
namedShape(name:"Square").simpleDescription()

class Square:namedShape{
    var sideLength: Double
    
    
    init(sideLength: Double, name: String){
        
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
        
    }
    func area()->Double{
        return sideLength*sideLength
    }
    override func simpleDescription()-> String{
    return "this is a Square with \(numberOfSides) sides"
    }

}
Square(sideLength:5.2,name:"Square").area()

Square(sideLength:5.2,name:"Square").simpleDescription()

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
names.sorted()
names.sorted(by: >)
print(names.sorted(by: { $0 < $1 }))
print(names.sorted{ $0 < $1 })

var digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

var numbers = [16, 58, 510]

let numNames = numbers.map {
    (number)-> String in
    var output=""
    var number = number
    
        repeat{
        output = digitNames[number % 10]!+output
        number = number/10
    }
    while number>0
    
    return output
}

print(numbers.remove(at:2))
numbers = [numbers.remove(at:0)]
var aString1 = """
hi
my
name
is
safna
azeez
"""
let regionalIndicatorForUS: Character = "🤦🏻‍♀️"

print(regionalIndicatorForUS);

var line = "This clock ticks on time"
line[line.startIndex]
line[line.index(before: line.endIndex)]
line[line.index(after:line.startIndex)]
var index = line.index(line.startIndex, offsetBy:5)
line[index]

line.insert(contentsOf:"fffabb", at: line.index(line.startIndex, offsetBy:5))

var arr=["wdw","edwed"]

arr += ["erwerw"]


var bigN = Array(repeating: 5, count : 5)
var ab="hello mol"
ab.uppercased()
for i in ab{
    print(i)
}

