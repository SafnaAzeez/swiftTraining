//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"




var num = 1002
(num%100)
func WordConversion(num: Int) -> String{
    
    
    
    var zeroDigit = ["","one","two","three","four","five","six","seven","eight","nine"]
    var tens = ["","ten","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]
    var teens = ["teen","eleven","twelve","thirteen","fourteen","fifteen"]
    var higher = ["","hundred","thousand","lakh","million"]
    var output=""
    var output1 = ""
    var output2=""
    
    
    func Convert(numb:Int) -> String{
        if 0...9 ~= numb{
            output += zeroDigit[num]
        }
        else  if numb%10 == 0 {
            output += tens[numb/10]
        }
        else if 11...15 ~= numb{
            output += teens[numb%10]
        }
        else if 16...19 ~= numb{
            output += zeroDigit[numb%10]+teens[0]
        }
        else
        {
            output += tens[numb/10]+" "+zeroDigit[numb%10]
        }
        return output
    }
    
    
    func ConvertHundred (number : Int) -> String{
        output2 += (number/100 < 1 ? "" : zeroDigit[number/100] + " " + higher[1])+" " + String((number%100)/10 == 0 ? zeroDigit[number%10] :Convert(numb: number%100))
        return output2
    }
    
    
    
    func ConvertThousand(number: Int) -> String {
        if 1000..<10000 ~= number{
            output1+=zeroDigit[number/1000]
        }
        else {
            output1 += Convert(numb: number/1000)
            output=""
        }
        output1 += " " + higher[2] + " "
        output1 += String( (number%1000)/100 >= 1 && (number%1000)/100 <= 9 ? zeroDigit[(number%1000)/100]+" "+higher[1]+" " : "")
        output1 += String(number%100 == 0 ? "": String(number%100<=9 ? zeroDigit[number%10]:Convert(numb: number%100) ))

        return output1
    }
    
    
    
    var result = ""
    
    
    
    switch num {
    case 0...9: result += zeroDigit[num]
    case 9..<100: result += Convert(numb: num)
    case 100..<1000 : result += ConvertHundred (number : num)
    case 1000..<100000:result += ConvertThousand(number: num)
    case 100000..<1000000:  result += zeroDigit[num/100000]+" "+higher[3]+" "
                            if (num%100000)/10000 == 0 {
                                result +=  (num%10000)/1000 == 0 ?
                                    ConvertHundred (number : num%1000): ConvertThousand(number: num%10000)
                                
                            }
                            else
                            {
                                    result += ConvertThousand(number: num%100000)
                            }

    default:result+="Too Long Number"
    }
    
    return result
}

print(WordConversion(num:153))

