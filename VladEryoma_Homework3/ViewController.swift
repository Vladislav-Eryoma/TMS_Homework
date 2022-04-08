//
//  ViewController.swift
//  VladEryoma_Homework3
//
//  Created by Vladislav Eryoma on 8.04.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Задание 1
        
        // Функция суммирования 3-ёх чисел
        func Sum(a: Int, b: Int, c: Int) {
            print(a + b + c)
        }
        
        Sum(a: 5, b: 7, c: 10)
        
        // Функция вычитания 3-ёх чисел
        func Minus(a: Double, b: Double, c: Double) -> Double {
            return b - a - c
        }
        
        let d = Minus(a: 8.5, b: 12.5, c: 2.8)
        
        print(d)
        
        // Функция умножения
        func Multiply() -> Int {
            7 * 10
        }
        
        let result = Multiply()
        
        print(result)
        
        // Функция деления
        func Del(a: Int, b: Int, c: Int) -> Int {
            return a / b / c
        }
        
        let resultDel = Del(a: 64, b: 4, c: 2)
        
        print(resultDel)
        
        // Задание 2
        
        // Вычисление суммы цифр четырёхначного числа 4263
        var p = 4263
        var sum = 0
        while p > 0 {
            sum = sum + p % 10
            p = p / 10
        }
        print("Сумма цифр равна:", sum)
        
        // Задание 3
        
        // Посимвольное сравнение двух строк
        let firstString = "авб"
        let secondString = "ввш"
        
        if firstString > secondString {
            print("Первая строка больше, чем вторая")
        } else if firstString < secondString {
            print("Вторая строка больше, чем первая")
        } else {
            print("Строки равны")
        }
        
        // Задание 4
        
        func Function(number: Int) {
            
            print(number)
            var number = number
            if number == 0 {
                return
            }
            // Таким образом поломаем приложение, создав бесконечный цикл
            // Замкнём цикл и заставим функцию выполнять операцию бесконечно
            number = (number - 1) //+ 1 | Комментарий здесь добавил, чтобы функция при запуске выполнилась
            Function(number: number)
        }
        Function(number: 4)
        
        // Задание 5
        
        // Функция возведения в степень числа 10
        func degree(m: Int) -> Int {
            return m * m
        }
        
        let x = degree(m: 10)
        print("Результат возведения в степень:", x)
        
        // Задание 6
        
        // Функция вычисление факториала числа 7!
        func Factorial(f: Int) -> Int {
            
            if f == 0 {
                return 1
            } else {
                return f * Factorial(f: (f - 1))
            }
        }
        
        let res = Factorial(f: 7)
        print("Факториал будет равен:", res)
        
    }


}
