//
//  RootCoordinatorView.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 21.09.2021..
//

import Foundation
import SwiftUI

struct RootCoordinatorView: View {
    @ObservedObject private var rootCoordinator: RootCoordinator
    
    init(coordinator: RootCoordinator) {
        self.rootCoordinator = coordinator
    }
    
    var body: some View {
      HomeCoordinatorView(coordinator: rootCoordinator.homeCoordinator)
    }
}
