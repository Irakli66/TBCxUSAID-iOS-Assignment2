import Foundation

// TODO: 1. შექმენით ფუნქცია სახელად `greet`, რომელიც იღებს String ტიპის პარამეტრს `name` და ბეჭდავს მისალმებას. მაგალითად, თუ გადავცემთ "გიორგი", უნდა დაიბეჭდოს "გამარჯობა, გიორგი!".

func greet(name: String) {
    print("გამარჯობა", name)
}

greet(name: "ირაკლი")

print("\n-------------------\n")
/*
TODO: 2. დაწერეთ ფუნქცია printMultiplicationTable, რომელიც იღებს ერთ Int ტიპის პარამეტრს number და ბეჭდავს ამ რიცხვის გამრავლების ტაბულას 1-დან 10-მდე. მაგალითად, თუ გადავცემთ 5-ს, ფუნქციამ უნდა დაბეჭდოს:
 5 x 1 = 5
 5 x 2 = 10
 5 x 3 = 15
 ...
 5 x 10 = 50

 გამოიძახეთ ეს ფუნქცია რამდენიმე სხვადასხვა რიცხვისთვის.
*/

func printMultiplicationTable(number: Int) {
    
    for  i in 1...10{
        print(number, "x", i, "=", number * i)
    }
    
}

printMultiplicationTable(number: 6)

print("\n-------------------\n")
// TODO: 3. შექმენით ფუნქცია `isEven`, რომელიც იღებს Int ტიპის პარამეტრს და აბრუნებს Bool-ს - true თუ რიცხვი ლუწია, false თუ კენტი. გამოიყენეთ ეს ფუნქცია რამდენიმე რიცხვის შესამოწმებლად და დაბეჭდეთ შედეგები.

func isEven(number: Int) -> Bool {
    number % 2 == 0
}

print("7", isEven(number: 7))
print("36", isEven(number: 36))
print("42", isEven(number: 42))

print("\n-------------------\n")
// TODO: 4. დაწერეთ ფუნქცია `repeatString`, რომელსაც აქვს ორი პარამეტრი: String ტიპის `text` და Int ტიპის `count`. ფუნქციამ უნდა დააბრუნოს ახალი სტრინგი, სადაც `text` გამეორებულია `count`-ჯერ. მაგალითად, `repeatString("ჰა", 3)` უნდა დააბრუნოს "ჰაჰაჰა".

func repeatString(text: String, count: Int) -> String {
    
    if count > 0 {
        
        String(repeating: text, count: count)

    } else {
        
        "count value must be greater than 0"
        
    }
}

let finalText = repeatString(text: "Ha", count: 4)
print(finalText)

print("\n-------------------\n")
// TODO: 5. შექმენით ფუნქცია `calculateTax`, რომელსაც აქვს ორი პარამეტრი: Double ტიპის `price` და Double ტიპის `taxRate` (პროცენტებში). ფუნქციამ უნდა დააბრუნოს გადასახადის თანხა. გამოიძახეთ ეს ფუნქცია სხვადასხვა ფასისთვის და დაბეჭდეთ შედეგები.

func calculateTax(price: Double, taxRate: Double) -> Double {
    
    price * taxRate / 100
    
}

print("Tax amount to pay is:", calculateTax(price: 25.5, taxRate: 22))


print("\n-------------------\n")
// TODO: 6. დაწერეთ ფუნქცია `printNumbers`, რომელსაც აქვს ვარიადული Int ტიპის პარამეტრი `numbers`. ფუნქციამ უნდა დაბეჭდოს ყველა გადაცემული რიცხვი. გამოიძახეთ ეს ფუნქცია სხვადასხვა რაოდენობის არგუმენტებით.

func printNumbers(_ numbers: Int...){
    for num in numbers {
        print(num)
    }
}

printNumbers(5, 6, 7, 8)
print("------")
printNumbers(5, 6, 7, 8, 15, 44, 21)

print("\n-------------------\n")
// TODO: 7. ფუნქციის გარეთ შექმენით მუდმივა ‘pi’ და მიანიჭეთ შესაბამისი მნიშვნელობა. შექმენით ფუნქცია ‘calculateCircleArea’ რომელსაც აქვს Double ტიპის პარამეტრი `radius`. Pi-ს და radius-ის გამოყენებით დაბეჭდეთ წრის ფართობი.

let pi: Double = 3.14

func calculateCircleArea(radius: Double) {
    
    print("წრის ფართობია", radius * radius * pi)
    
      //  print("წრის ფართობია", pow(radius, 2.0) * pi) // ან კვადრატის დასათვლელად შეგვიძლია გამოვიყენოთ pow
    
}

calculateCircleArea(radius: 5)

print("\n-------------------\n")
// TODO: 8. შექმენით ფუნქცია printEvenNumbers, რომელიც იღებს ვარიადულ Int ტიპის პარამეტრს numbers. ფუნქციამ უნდა დაბეჭდოს მხოლოდ ლუწი რიცხვები გადმოცემული არგუმენტებიდან. გამოიძახეთ ეს ფუნქცია სხვადასხვა რაოდენობის არგუმენტებით და დაბეჭდეთ შედეგები.

func printEvenNumbers(_ numbers: Int...){
    var findEven = false
    
    for num in numbers {
        if num % 2 == 0 {
         print(num)
         findEven = true
        }
    }
    
    if !findEven {
        print("no even numbers")
    }
}
print("🟢")
printEvenNumbers(5, 6, 7, 8, 15, 44, 21)
print("------------")
printEvenNumbers(222, 111, 333, 444, 4675, 424, 231)
print("------------")
printEvenNumbers(5, 7, 15, 21)
print("🔴")

print("\n-------------------\n")
// TODO: 9. დაწერეთ ფუნქცია `applyOperation`, რომელსაც აქვს სამი პარამეტრი: ორი Int ტიპის რიცხვი და ერთი closure, რომელიც იღებს ორ Int-ს და აბრუნებს Int-ს. ფუნქციამ უნდა გამოიყენოს ეს closure ორ რიცხვზე და დააბრუნოს შედეგი. გამოიძახეთ ეს ფუნქცია სხვადასხვა არითმეტიკული ოპერაციებისთვის (მიმატება, გამოკლება, გამრავლება) და დაბეჭდეთ შედეგები.


func applyOperation(number1: Int, number2: Int, operation: (Int, Int) -> Int ) -> Int {
    operation(number1, number2)
}

let sumClosure: (Int, Int) -> Int = {number1, number2 in
     number1 + number2
}

let multiplyClosure: (Int, Int) -> Int = {$0 * $1} // ასევე შეგვიძლია გამოვიყენოთ დოლარის ნიშნები სადაც 0 ნიშნავს პირველ პარამეტრს მოწოდებულს 1 კი მეორე პარამეტრს

print("🟢")
let sumResult = applyOperation(number1: 20, number2: 23, operation: sumClosure)
print("Sum of 2 numbers:", sumResult)
let multiplyResult = applyOperation(number1: 6, number2: 6, operation: multiplyClosure)
print("Multiply of 2 numbers:", multiplyResult)
print("🔴")

print("\n-------------------\n")
// TODO: 10. შექმენით ფუნქცია `repeatOperation`, რომელსაც აქვს ორი პარამეტრი: Int ტიპის `count` და @autoclosure ტიპის closure `operation`. ფუნქციამ უნდა გამოიძახოს ეს operation `count`-ჯერ. გამოიყენეთ ეს ფუნქცია, რომ დაბეჭდოთ "გამარჯობა" 5-ჯერ.

func repeatOperation(count: Int, operation: @autoclosure () -> String ){
    for i in 1...count {
        print(operation())
    }
    
}

repeatOperation(count: 5, operation: "გამარჯობა")

print("\n-------------------\n")
// TODO: 11. დაწერეთ ფუნქცია createCounter, რომელიც აბრუნებს closure-ს. ეს ფუნქცია უნდა შეიცავდეს ლოკალურ ცვლადს count, რომელიც ინიციალიზდება 0-ით. დაბრუნებულმა closure-მ უნდა გაზარდოს ეს count ცვლადი ყოველ გამოძახებაზე და დააბრუნოს მისი ახალი მნიშვნელობა.


// ფუნცქცია რომელიც აბრუნებს ქლოჟერს რომელიც აბრუნებს Int ტიპის ცვლადს
func createCounter() -> () -> Int {
    var count = 0
    
    return {
        count += 1
        print(count)
        return count
    }
}

let counter = createCounter()
counter()
counter()
counter()

print("\n-------------------\n")
// 12. შექმენით ფუნქცია performOperation, რომელსაც აქვს ერთი closure ტიპის პარამეტრი operation. ფუნქციამ უნდა დაბეჭდოს “ოპერაცია დაიწყო” და შემდეგ გამოიძახოს operation. გამოიძახეთ ეს ფუნქცია და closure-ს შიგნით დაბეჭდეთ “ოპერაცია დასრულდა”.

func performOperation(operation: () -> Void ){
    print("ოპერაცია დაიწყო")
    operation()
    
}


performOperation{ print("ოპერაცია დასრულდა") }
