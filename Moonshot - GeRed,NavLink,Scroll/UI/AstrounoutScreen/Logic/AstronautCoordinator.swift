//
//  AstronautCoordinator.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 22.09.2021..
//
import Foundation

class AstronautCoordinator: ObservableObject {
  @Published var viewModel: AstronautViewModel
  
  init(astronaut: Astronaut) {
    viewModel = AstronautViewModel(astronaut)
  }
  
}
