//
//  Mission.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 21.09.2021..
//

import Foundation

struct Mission: Codable, Identifiable {
  struct CrewRole: Codable {
    let name: String
    let role: String
  }
  
  let id: Int
  let launchDate: String?
  let crew: [CrewRole]
  let description: String
  var crewAstronauts: Array<Astronaut>?
  
  var missionName: String {
    "Apollo \(id)"
  }
  var imageName: String {
    "apollo\(id)"
  }
}


