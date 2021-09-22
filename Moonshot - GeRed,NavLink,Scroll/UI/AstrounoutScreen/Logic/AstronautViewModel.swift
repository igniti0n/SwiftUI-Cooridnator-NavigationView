//
//  AustronautViewModel.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 21.09.2021..
//

import Foundation

class AstronautViewModel: ObservableObject {
  @Published var astronaut: Astronaut
  
  init(_ astronaut: Astronaut) {
    self.astronaut = astronaut
  }
}
