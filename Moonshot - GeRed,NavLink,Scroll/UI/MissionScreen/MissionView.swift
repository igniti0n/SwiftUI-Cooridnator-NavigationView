//
//  Missionview.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 21.09.2021..
//

import Foundation
import SwiftUI

struct MissionView: View {
  @ObservedObject var viewModel: MissionViewModel
  
  var body: some View {
    ScrollView {
      VStack(alignment: .center, spacing: 10, content: {
        Image(viewModel.mission.imageName)
          .resizable()
          .scaledToFit()
        Text(viewModel.mission.description)
        ForEach(0..<viewModel.mission.crew.count) { crewIndex in
          if let currentCrewMember = viewModel.mission.crewAstronauts?[crewIndex] {
            HStack(alignment: .center, spacing: 20, content: {
              Image(currentCrewMember.id)
                .resizable()
                .frame(width: 60,height: 60)
                .clipShape(Capsule())
              Text(currentCrewMember.name)
              Spacer()
              
            })
            .padding()
            .onNavigation {
              viewModel.goToAstronautPage(astronaut: currentCrewMember)
            }
          }
        }
      })
    }
   
  }
}
