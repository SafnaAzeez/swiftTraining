//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Point {
    var x = 0.0 , y = 0.0
}
struct Shape {
    var width = 0.0 , length = 0.0
}

struct Rect {
   var origin = Point()
    var size = Shape()
    var center: Point   {
        get{
            let centerX = origin.x + (size.width)/2
            let centerY = origin.y + (size.length)/2
            return Point(x:centerX,y:centerY)
        }
        set{
            origin.x = newValue.x-(size.width)/2
            origin.y = newValue.y-(size.length)/2
        }
    }

}

var square = Rect(origin: Point(x: 0.0, y: 0.0),
                  size: Shape(width: 10.0, length: 10.0))



class StepCounter {
    static var steps = 1
    var totalSteps: Int = 0 {
        willSet(newTotalSteps){
            print("'is about to set new steps'")
        }
        didSet{
            if totalSteps > oldValue{
                print("added \(totalSteps-oldValue)")
            }
        }
    }
    
}
StepCounter.steps = 6
var stepCounter = StepCounter()
stepCounter.totalSteps=200
stepCounter.totalSteps=400


struct Matrix{
    var rows: Int, columns : Int
    var grid : [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating : 0.0, count: rows*columns)
    }
    
    func checkIndexValid(row: Int,column:Int)-> Bool {
        return row>0 && row<rows && column>0 && column<columns
    }
    
    subscript(row: Int,  column:Int) ->  Double {
        get{
            assert(checkIndexValid(row:row,column: column),"Invalid Index")
            return grid[(row * columns + column)]
        }
        set{
            assert(checkIndexValid(row:row,column: column),"Invalid Index")
            grid[(row * columns + column)] = newValue
        }
    }
}

var matrix = Matrix(rows:3 ,columns:3)
matrix[2,2] = 6
print(matrix)
matrix[1,2] = 3
print(matrix)

