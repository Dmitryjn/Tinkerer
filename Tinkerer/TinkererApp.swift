//
//  TinkererApp.swift
//  Tinkerer
//
//  Created by Agustin Navas on 08/02/2021.
//

import SwiftUI

@main
struct TinkererApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
            NavigationView{
                ContentView( location: locations.primary)
            }
            .tabItem {
                Image(systemName: "airplane.circle")
                Text("Discover")
            }
                NavigationView {
                    WorldView ()
                }
                .tabItem {
                    Image ("star")
                    Text ("Locations")
                }
            
        }
            .environmentObject(locations)
      }
    }
}
