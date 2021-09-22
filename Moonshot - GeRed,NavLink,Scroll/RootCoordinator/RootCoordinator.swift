//
//  RootCoordinator.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 21.09.2021..
//

import Foundation

class RootCoordinator: ObservableObject {
  @Published var homeCoordinator = HomeCoordinator()
}
