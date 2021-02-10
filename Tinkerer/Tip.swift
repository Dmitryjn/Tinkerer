//
//  Tip.swift
//  Tinkerer
//
//  Created by Agustin Navas on 09/02/2021.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
