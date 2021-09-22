//
//  HomeView.swift
//  Moonshot - GeRed,NavLink,Scroll
//
//  Created by Ivan Stajcer on 21.09.2021..
//

import Foundation
import SwiftUI

struct HomeView: View {
  @ObservedObject var viewModel: HomeViewModel
  //@Binding var navigationBinding: MissionCoordinator?
  
  var body: some View {
    List {
      ForEach(viewModel.missions) { mission in
        
        HStack(alignment: .center, spacing: 10, content: {
          Image("\(mission.imageName)")
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 40, alignment: .center)
          VStack(alignment: .leading, spacing: nil, content: {
            Text("\(mission.missionName)")
            Text("\(mission.launchDate ?? "N/A")")
          })
        }).onNavigation {
          var crewMembers = Array<Astronaut>()
          for member in mission.crew {
            guard let member = viewModel.astronauts.first(where: { astronaut in
              astronaut.id == member.name
            })else {fatalError("Not all astronauts found")}
            crewMembers.append(member)
          }
          var missionWithAstronauts = mission
          missionWithAstronauts.crewAstronauts = crewMembers
          viewModel.openMissionScreen(mission: missionWithAstronauts)
        }
        
      }
    }
  }
}

