import UIKit

var greeting = "Hello, playground"

// Задание 1

var a = 2.5
var b = 9.7
var c = 6.9
var d = 8.2

let x = Int(a) + Int(b) + Int(c) + Int(d)

var a2 = Double(a) - Double(Int(a))
var b2 = Double(b) - Double(Int(b))
var c2 = Double(c) - Double(Int(c))
var d2 = Double(d) - Double(Int(d))

let y = Int(round((a2 + b2 + c2 + d2) * 10))

print(x)
print(y)


// Задание 2

let k = 13
let m = 2
let n = 10

if k % 2 == 0 {
    print("Число k чётное")
} else {
    print("Число k нечётное")
}

if m % 2 == 0 && n % 2 == 0 {
    print("Оба числа m и n чётные")
} else if m % 2 == 0 && n % 2 > 0 {
    print("Число m чётное, число n нечётное")
} else if m % 2 > 0 && n % 2 == 0 {
    print("Число m нечётное, число n чётное")
} else {
    print("Оба числа m и n нечётные")
}
