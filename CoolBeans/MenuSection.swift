//
//  MenuSection.swift
//  CoolBeans
//
//  Created by Beau Leyba on 30/07/23.
//

import Foundation

/// This will get the sections of the menu from the menu.json file with their array of drinks
struct MenuSection: Identifiable, Codable {
    
    let id: UUID
    let name: String
    let drinks: [Drink]
}
