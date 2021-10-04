//
//  MissionCoordinator.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 04.10.2021..
//

import Foundation

class MissionCoordinator: ObservableObject {
  @Published var viewModel: MissionViewModel!
  @Published var astronautCoordinator: AstronautCoordinator?
  
  init(mission: Mission) {
    viewModel = MissionViewModel(mission, coordinator: self)
  }
}

extension MissionCoordinator {
  // MARK: - Navigation
  func openAstronaut(astronaut: Astronaut) {
    astronautCoordinator = AstronautCoordinator(astronaut: astronaut)
  }
}
