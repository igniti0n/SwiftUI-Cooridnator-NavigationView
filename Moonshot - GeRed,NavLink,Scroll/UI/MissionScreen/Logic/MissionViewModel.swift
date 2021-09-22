//
//  MissionViewModel.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 21.09.2021..
//

import Foundation

class MissionViewModel: ObservableObject {
  @Published var mission: Mission
  
  private unowned var coordinator: MissionCoordinator
  
  init(_ mission: Mission, coordinator: MissionCoordinator) {
    self.mission = mission
    self.coordinator = coordinator
  }
}

extension MissionViewModel {
  // MARK: - Navigation
  func goToAstronautPage(astronaut: Astronaut) {
    coordinator.openAstronaut(astronaut: astronaut)
  }
}
