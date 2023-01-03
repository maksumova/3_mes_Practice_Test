//
//  main.swift
//  3_mes_Practice_Test
//
//  Created by Nika Abdulakhatova on 03.01.2023.
//

import Foundation

print("Hello, World!")

//Время на выполнение: 1 час
//
//Критерии:
//Вы должны иметь 2 родительских(базовых) классов и по 2 наследующихся класса
//Каждый класс должен иметь не менее 3 переменных(1 из них - массив)
//Все свойства внутри классов должны быть закрытыми(приватными)
//Для массивов создать методы для добавления элемента, переопределения и удаления
//Вы должны иметь хотябы 1 закрытый метод внутри каждого класса
//Для каждого класса делать принт, говорящий о инициализации либо деинициализации элемента
//
//Когда закончите с подготовкой классов - создать по 3 объекта каждого из классов и пользуясь полиморфизмом и оператором is отобразить разные данные в консоль
//Когда перестаете работать с каким-то объектом - деинициализовать его
//Посчитать сколько переменных остались живыми(не были деинициализированы)



class Store{
    var name: Int
    var location: String
    var workSchedule: Int
    var delivery: String
    
    init(name: Int, location: String, workSchedule: Int, delivery: String) {
        self.name = name
        self.location = location
        self.workSchedule = workSchedule
        self.delivery = delivery
    }
    
    func getInfo(){
        print("\(name), \(location), \(workSchedule), \(delivery)")
    }
}
class Parfum: Store{
    var square: Int
    init(name: Int, location: String, workSchedule: Int, delivery: String,square: Int) {
        self.square = square
        
        super.init(name: name, location: location, workSchedule: workSchedule, delivery: delivery)
    }
    override func getInfo() {
        print ("\(name), \(location), \(workSchedule), \(delivery), \(square)")
    }
}
class Clothes: Store{
    var dayOf: String
    
    init(name: Int, location: String, workSchedule: Int, delivery: String,square: Int, dayOf: String) {
        self.dayOf = dayOf
        super.init(name: name, location: location, workSchedule: workSchedule
                   , delivery: delivery)
    }
    override func getInfo() {
        print("\(name), \(location), \(workSchedule), \(delivery), \(dayOf)")
    }
}

class Hotell{
    var name: Int
    var location: String
    var workSchedule: Int
    var square: Int
    var rating: Int
    init(name: Int, location: String, workSchedule: Int, square: Int, rating: Int) {
        self.name = name
        self.location = location
        self.workSchedule = workSchedule
        self.square = square
        self.rating = rating
    }
    func getData(){
        print("\(name), \(location), \(workSchedule), \(square), \(rating)")
        
    }
}
class Restuarant: Hotell{
    var cuisine: String
    init(name: Int, location: String, workSchedule: Int, square: Int, rating: Int,cuisine: String) {
        self.cuisine = cuisine
        super.init(name: name, location: location, workSchedule: workSchedule, square: square, rating: rating)
    }
    override func getData() {
        print("\(name), \(location), \(workSchedule), \(square), \(rating), \(cuisine)")
        
    }
    
    class Casino: Hotell
}
