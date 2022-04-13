//
//  ViewController.swift
//  VladEryoma_Homework
//
//  Created by Vladislav Eryoma on 13.04.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var array: [(Int, Int, String)] = [(5, 3, "Первый кортеж"), (6, 8, "Второй кортеж"), (2, 10, "Третий кортеж")]
        
        var newArray = array.map { element in
           return (element.0 * element.0, element.1 * element.1, element.2)
        }
        
        var filteredArray = newArray.filter { element in
            return element.0 % 2 == 0 && element.1 % 2 == 0
        }
        
        var sortedArray1 = filteredArray.sorted { element1, element2 in
            return element1 < element2
        }
        
        var sortedArray2 = newArray.sorted { element1, element2 in
            return element1 < element2
        }
        
        print(array) // Первоначальный массив из кортежей
        print(newArray) // Кортеж из массивов, возведенный в квадрат Int тип данных
        print(filteredArray) // Фильтр массива только по чётным значениям
        print(sortedArray1) // Фильтр по возрастанию отфильтрованного по чётным значениям массива
        print(sortedArray2) // Фильтр по возрастанию массива до фильтрации, но возведённого в квадрат
        
    }

}
