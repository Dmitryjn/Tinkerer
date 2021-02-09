//
//  locations.swift
//  Tinkerer
//
//  Created by Agustin Navas on 09/02/2021.
//

import Foundation

class Locations: ObservableObject {
    let places: [location]
    
    var primary: location{
        places[0]
        
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([location].self, from: data)
    }
}
