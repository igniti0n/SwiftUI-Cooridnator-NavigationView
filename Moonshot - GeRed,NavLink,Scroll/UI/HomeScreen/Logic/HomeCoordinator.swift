//
//  HomeCoordinator.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 21.09.2021..
//

import Foundation

class HomeCoordinator: ObservableObject {
  @Published var viewModel: HomeViewModel!
  @Published var missionCoordiantor: MissionCoordinator?
  
  init() {
    viewModel = HomeViewModel(coordinator: self)
  }
  
  func getAllAstrounauts() -> [Astronaut] {
    viewModel.astronauts
  }
  
}

extension HomeCoordinator {
  // MARK: - Navigation
  func openMission(mission: Mission) {
    missionCoordiantor = MissionCoordinator(mission: mission)
  }
}

