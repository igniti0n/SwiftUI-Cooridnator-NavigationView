//
//  HomeCoordinatorView.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 21.09.2021..
//

import Foundation
import SwiftUI

struct MissionCoordinatorView: View {
  @ObservedObject var homeCoordinator: MissionCoordinator
  
  init(coordinator: MissionCoordinator) {
    self.homeCoordinator = coordinator
  }
  
  var body: some View {
    MissionView(viewModel: homeCoordinator.viewModel)
      .navigation(item: $homeCoordinator.astronautCoordinator) { coorinator in
        AstroautCoordinatorView(coordinator: coorinator)
      }
  }
}
