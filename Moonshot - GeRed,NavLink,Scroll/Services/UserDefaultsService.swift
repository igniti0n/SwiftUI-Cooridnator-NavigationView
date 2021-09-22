//
//  UserDefaultsService.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 21.09.2021..

import Foundation

final class UserDefaultsService {
  
    static func saveToDefaults<T: Encodable>(settings: T) {
    guard let encodedSettings = try? JSONEncoder().encode(settings) else {return}
    let userDefaults = UserDefaults()
    userDefaults.setValue(encodedSettings, forKey: "settings")
    
  }
  
    static func readFromDefaults<T: Decodable>() -> T? {
    let userDefaults = UserDefaults()
    guard let encodedData =  userDefaults.data(forKey: "settings") else {return nil}
    return try? JSONDecoder().decode(T.self, from: encodedData)
  }
  
}
