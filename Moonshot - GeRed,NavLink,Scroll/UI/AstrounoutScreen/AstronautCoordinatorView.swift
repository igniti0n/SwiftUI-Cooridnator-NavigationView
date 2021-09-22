//
//  HomeCoordinatorView.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 21.09.2021..
//

import Foundation
import SwiftUI

struct AstroautCoordinatorView: View {
    @ObservedObject private var astronautCoordinator: AstronautCoordinator
    
    init(coordinator: AstronautCoordinator) {
        self.astronautCoordinator = coordinator
    }
    
    var body: some View {
      Text("This is \(astronautCoordinator.viewModel.astronaut.name) speaking. Please go on next page, this page is work in progress. Developer too lazy, what can you do.")
    }
}
