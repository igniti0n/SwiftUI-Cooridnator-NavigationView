//
//  MissionCoordinator.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 22.09.2021..
//

import Foundation

class MissionCoordinator: ObservableObject {
  @Published var viewModel = HomeViewModel()
  @Published var missionViewModel: MissionViewModel?
  @Published var astronautViewModel: AstronautViewModel?
}
