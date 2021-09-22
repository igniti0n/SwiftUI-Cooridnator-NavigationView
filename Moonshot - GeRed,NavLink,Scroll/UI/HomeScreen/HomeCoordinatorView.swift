//
//  HomeCoordinatorView.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 21.09.2021..
//

import Foundation
import SwiftUI

struct HomeCoordinatorView: View {
  @ObservedObject private var homeCoordinator: HomeCoordinator
  
  init(coordinator: HomeCoordinator) {
    self.homeCoordinator = coordinator
    
  }
  
  var body: some View {
    NavigationView {
      HomeView(viewModel: homeCoordinator.viewModel)
        .navigationTitle("Moonshot")
          .navigation(item: $homeCoordinator.missionCoordiantor) { item in
            MissionCoordinatorView(coordinator: item)
          }
    }
  }
}
