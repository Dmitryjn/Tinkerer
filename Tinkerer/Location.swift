//
//  Location.swift
//  Tinkerer
//
//  Created by Agustin Navas on 09/02/2021.
//

import Foundation

struct location: Decodable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
     
}
