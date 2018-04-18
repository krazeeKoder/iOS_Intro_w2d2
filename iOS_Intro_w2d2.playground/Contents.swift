//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Student {
    let name: String
    let examOneGrade: Int
    var examTwoGrade: Int
    var paperGrade: Int
    
    var finalGrade: String?
    
    init(name: String, examOneGrade: Float, examTwoGrade: Float, paperGrade: Float) {
        self.name = name
        self.examOneGrade = Int(examOneGrade.rounded())
        self.examTwoGrade = Int(examTwoGrade.rounded())
        self.paperGrade = Int(paperGrade.rounded())
    }
    
    func updateFinalGrade() {
        let average = Int(Float(self.examOneGrade) * 0.3 + Float(self.examTwoGrade) * 0.3 + Float(self.paperGrade) * 0.4)
        
        if average >= 90 {
            self.finalGrade = "A"
        } else if average >= 80 {
            self.finalGrade = "B"
        } else if average >= 70 {
            self.finalGrade = "C"
        } else  if average >= 50 {
            self.finalGrade = "D"
        } else {
            self.finalGrade = "F"
        }
        
//        switch average {
//        case 90...100:
//            self.finalGrade = "A"
//        case 80...90:
//            self.finalGrade = "B"
//        default:
//            self.finalGrade = "F"
//        }
    }
}

let mary = Student(name: "Mary", examOneGrade: 50.2, examTwoGrade: 80.2, paperGrade: 80.9)
let kevin = Student(name: "Kevin", examOneGrade: 50, examTwoGrade: 50.5, paperGrade: 50.5)
let ryan = Student(name: "Ryan", examOneGrade: 90.1, examTwoGrade: 95.2, paperGrade: 97.3)

print("Grade: \(mary.finalGrade)")
mary.updateFinalGrade()
print("Grade: \(mary.finalGrade!)")
kevin.updateFinalGrade()
ryan.updateFinalGrade()
print("Grade: \(ryan.finalGrade!)")
print("Grade: \(kevin.finalGrade!)")



