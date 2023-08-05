//
//  ConfigurationOptions.swift
//  CoolBeans
//
//  Created by Beau Leyba on 5/08/23.
//

import Foundation

struct ConfigurationOptions: Identifiable, Codable, Hashable {
    let id: UUID
    let name: String
    let calories: Int
    
    static let none = ConfigurationOptions(id: UUID(), name: "None", calories: 0)
}
