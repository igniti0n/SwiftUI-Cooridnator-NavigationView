//
//  Bundle-decode.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 21.09.2021..
//

import Foundation


extension Bundle {
  func decode<T: Codable>(resource: String) -> T {
    guard let fileUrl = Bundle.main.url(forResource: resource, withExtension: "json") else {
      fatalError("No file \(resource) found.")
    }
    
    guard let data = try? Data(contentsOf: fileUrl) else {
      fatalError("Loading data failed.")
    }
    
    let decoder = JSONDecoder()
    print("Decoding \(resource)....")
    guard let decodedValue  = try? decoder.decode(T.self, from: data) else {
      fatalError("Decoding value failed.")
    }
    
    return decodedValue
  }
}
