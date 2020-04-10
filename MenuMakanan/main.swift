//
//  main.swift
//  MenuMakanan
//
//  Created by Bernadietta Anggie on 10/04/20.
//  Copyright © 2020 Bernadietta Anggie. All rights reserved.
//

import Foundation

//function for get item from user
func getInput(message: String) -> String? {
    print(message, terminator: " : ");
    return readLine()
}

func getInputInt(message: String) -> Int? {
    if let inputString = getInput(message: message) {
        return Int(inputString)
    } else {
        return nil
    }
}

//heavyMeal class
enum HeavyMeal: Int, CaseIterable {
    case nasiGoreng = 1, indomie, magelangan, nasiKuning, kwetiau, nasiPutih
}

//sideDish class
enum SideDish: Int, CaseIterable {
    case ikan = 1, telur, tempe, tahu, kerupuk
}

//drink class
enum Drinks: Int, CaseIterable {
    case esTeh = 1, esJeruk, kopi, airPutih
}

//show all item in enumeration class
func showAllHeavyMeal() {
    var position = 1
    print("Heavy Meal")
    for heavyMeal in HeavyMeal.allCases {
        print("[\(position) \(heavyMeal)]")
        position += 1
    }
}

func showAllSideDish() {
    var position = 1
    print("Side Dish")
    for sideDish in SideDish.allCases {
        print("[\(position) \(sideDish)]")
        position += 1
    }
}

func showAllDrink() {
    var position = 1
    print("Drinks")
    for drink in Drinks.allCases {
        print("[\(position) \(drink)]")
        position += 1
    }
}

var total = 0
var item = ("","","")

func inputHeavyMeal() {
    if let position = getInputInt(message: "Choose food") {
        if let heavyMeal = HeavyMeal(rawValue: position) {
            switch heavyMeal {
            case .indomie:
                total += 6000
                item.0 = "Indomie"
            case .kwetiau:
                total += 10000
                item.0 = "Kwetiau"
            case .magelangan:
                total += 7000
                item.0 = "Magelangan"
            case .nasiGoreng:
                total += 9000
                item.0 = "Nasi Goreng"
            case .nasiPutih:
                total += 3000
                item.0 = "Nasi Putih"
            case .nasiKuning:
                total += 5000
                item.0 = "Nasi Kuning"
            }
        } else {
            print("Position \(position) not found")
        }
    } else {
        print("Input Invalid")
    }
}

func inputSideDish() {
    if let position = getInputInt(message: "Choose Side Dish") {
        if let sideDish = SideDish(rawValue: position) {
            switch sideDish {
            case .ikan:
                total += 5000
                item.1 = "Ikan"
            case .kerupuk:
                total += 500
                item.1 = "Kerupuk"
            case .tahu:
                total += 1000
                item.1 = "Tahu"
            case .telur:
                total += 3000
                item.1 = "Telur"
            case .tempe:
                total += 1000
                item.1 = "Tempe"
            }
        } else {
            print("Position \(position) not found")
        }
    } else {
        print("Input Invalid")
    }
}

func inputDrinks() {
    if let position = getInputInt(message: "Choose drink") {
        if let drink = Drinks(rawValue: position) {
            switch drink {
            case .airPutih:
                total += 0
                item.2 = "Air Putih"
            case .esJeruk:
                total += 2500
                item.2 = "Es Jeruk"
            case .esTeh:
                total += 2000
                item.2 = "Es Teh"
            case .kopi:
                total += 3000
                item.2 = "Kopi"
            }
        } else {
            print("Position \(position) not found")
        }
    } else {
        print("Input Invalid")
    }
}

func menu() {
    print("Welcome to Dicoding Restaurant")
    print("--------------------------------------")
    showAllHeavyMeal()
    inputHeavyMeal()
    print("--------------------------------------")
    showAllSideDish()
    inputSideDish()
    print("--------------------------------------")
    showAllDrink()
    inputDrinks()
    print("--------------------------------------")
    print("You have been choose \(item.0), \(item.1), and \(item.2) with total price Rp. \(total)")
    print("--------------------------------------")
    print("Thank you")
}

menu()
