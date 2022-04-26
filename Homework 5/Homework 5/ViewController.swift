//
//  ViewController.swift
//  Homework 5
//
//  Created by Vladislav Eryoma on 26.04.22.
//

import UIKit

class Beer {
    // Указываем название пива
    let name: String
    // Страна производства
    let countryName: String
    // Цена за 1 литр
    let price: Double
    // Изначальный объём в литрах
    var initialVolume: Int
    // Остаток в литрах
    var remainder: Int
    
    init(name: String, countryName: String, price: Double, initialVolume: Int = 100) {
        self.name = name
        self.countryName = countryName
        self.price = price
        self.initialVolume = initialVolume
        self.remainder = initialVolume
    }
}

class BeerBar {
    static let shared: BeerBar = BeerBar()
    init() {}
    
    var beerArray: [Beer] = []
    
    // Функция обновления данных до стартовых значений
    func resetToDefaults() {
        beerArray.removeAll() // Чистка массива
        beerArray.append(Beer(name: "Witbier", countryName: "нидерл.", price: 150.00))
        beerArray.append(Beer(name: "Berliner Weisse", countryName: "нем.", price: 170.00))
        beerArray.append(Beer(name: "Blonde Ale", countryName: "англ.", price: 220.00))
        beerArray.append(Beer(name: "Pale Ale", countryName: "англ.", price: 200.00))
    }
    
    // Функция покупки пива
    // name: строковое значение, обозначающее название пива, которое можно купить
    // liters: числовое значение, указывающее объём в литрах при покупке пива
    // return: возврат строковой информации о покупке пива
    func buyBeer(name: String, liters: Int = 1) -> String {
        for beer in beerArray {
            if beer.name == name {
                if beer.remainder - liters >= 0 {
                    beer.remainder = beer.remainder - liters // Отнимаем пиво, которое продаем из параметра remainder и сохраняем                                          получившиеся значения в него же
                    print(beer.remainder)
                    return "Пиво продано"
                }
                return "Пиво закончилось"
            }
        }
        return "Такое пиво не найдено"
    }
    
    // Функция получения информации о стоимости проданного пива
    func getSaleStatus() -> Double {
        var sum = 0.0
        for beer in beerArray {
            sum = sum + (beer.price * Double(beer.initialVolume - beer.remainder))
        }
        return sum
    }
    
    // Функция получения информации о баре
    func getBarInfo() -> String {
        var info = ""
        for beer in beerArray {
            info = info + "Пиво: \(beer.name) страна: \(beer.countryName) цена: \(beer.price)руб. осталось: \(beer.remainder) л.\n"
        }
        return info
    }
}

class ViewController: UIViewController {
    
    @IBOutlet var barInfoLabel: UILabel!
    @IBOutlet var buyInfoLabel: UILabel!
    @IBOutlet var sumInfoLabel: UILabel!
    
    @IBOutlet var nameBeerTextField: UITextField! // UI элемент для ввода текста
    @IBOutlet var litersBeerTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        defaultInitBar()
        buyInfoLabel.text = "" // Скрываем полностью по завершении анимации
        // Do any additional setup after loading the view.
        
        hideKeyboardWhenTappedAround()
    }
    
    // Сброс значения до стартовых
    func defaultInitBar() {
        BeerBar.shared.resetToDefaults()
        resetBarView()
    }
    
    func resetBarView() {
        barInfoLabel.text = BeerBar.shared.getBarInfo()
        sumInfoLabel.text = "Выручка: \(BeerBar.shared.getSaleStatus()) руб."
    }
    
    func showBuyInfo(string: String) {
        buyInfoLabel.text = string
        
        // label.isHidden = true // скрыть
        // label.isHidden = false // показать
        
        // label.alpha = 0 // прозрачный
        // label.alpha = 0.5 // прозрачный на половину
        // label.alpha = 1 // не прозрачный
        
        buyInfoLabel.isHidden = false // показываем
        buyInfoLabel.alpha = 0 // но делаем прозрачным
        UIView.animate(withDuration: 1.0) { // делаем анимацию на 1 секунду
            self.buyInfoLabel.alpha = 1 // делаем не прозрачным в течении секунды
        } completion: { _ in
            // скрыть с анимацией
            self.buyInfoLabel.isHidden = false // изначально показываем
            self.buyInfoLabel.alpha = 1 // не прозрачный
            UIView.animate(withDuration: 1.0) { // анимация в секунду
                self.buyInfoLabel.alpha = 0 // делаем прозрачным в течении секунды
            } completion: { _ in
                self.buyInfoLabel.isHidden = true // скрываем полностью по завершении анимации
            }
        }
    }
    
    @IBAction func didTapResetBar(sender: UIButton) {
        defaultInitBar()
    }
    
    @IBAction func didTapBuyBar(sender: UIButton) {
        
        // скрываем клавиатуру
        nameBeerTextField.resignFirstResponder()
        litersBeerTextField.resignFirstResponder()

        // берем текст из TextField c именем
        guard let name = nameBeerTextField.text, name.count > 0 else {
            showBuyInfo(string: "Вы не ввели название пива")
            return
        }

        guard let liter = Int(litersBeerTextField.text ?? ""), liter > 0 else {
            showBuyInfo(string: "Вы не ввели количество пива или ввели не корректно")
            return
        }

        let buyStatus = BeerBar.shared.buyBeer(name: name, liters: liter)
        showBuyInfo(string: buyStatus)
        resetBarView()
    }
    
    func hideKeyboardWhenTappedAround() {
        // добавляем жест нажатия на весь экран, при нажатии вызовется метод dismissKeyboard
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    // @objc обозначает, что мы вызываем эту функцию через конструкцию #selector(dismissKeyboard)
    @objc func dismissKeyboard() {
        // это еще один способ закрыть открытую клавиатуру с экрана
        view.endEditing(true)
    }
    
}
