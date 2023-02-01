//
//  Model.swift
//  Notes
//
//  Created by Alexey Manokhin on 01.02.2023.
//

import Foundation

var dataItems:[String] {
    set {
        UserDefaults.standard.set(newValue, forKey: "dataKey")
        UserDefaults.standard.synchronize()
    }
    get {
        if let array = UserDefaults.standard.array(forKey: "dataKey") as? [String] {
            return array
        } else {
            return[]
        }
    }
}

func addItem(nameItem: String) {
    dataItems.append(nameItem)
}

func removeItem(at index: Int) {
    dataItems.remove(at: index)
}

