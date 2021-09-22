//
//  HomeViewModel.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 21.09.2021..
//

import Foundation

class HomeViewModel: ObservableObject {
  @Published var missions = Array<Mission>()
  @Published var astronauts = Array<Astronaut>()
  
  private unowned let coordinator: HomeCoordinator
  
  init(coordinator: HomeCoordinator) {
    self.coordinator = coordinator
    missions = Bundle.main.decode(resource: "missions")
    astronauts = Bundle.main.decode(resource: "astronauts")
  }
  
  func openMissionScreen(mission: Mission) {
    coordinator.openMission(mission: mission)
  }
    
}
