//
//  Menu.swift
//  CoolBeans
//
//  Created by Beau Leyba on 30/07/23.
//

import Foundation

/// This will grab the menu sections from the menu.json file AND tells it how to initialize. It is telling it to look in the bundle, for a file named menu with a json extension, try to get the data from it, then try to decode that data into sections. If it fails it will present a fatal error
class Menu: ObservableObject, Codable {
    
    let sections: [MenuSection]
    var milkOptions = [ConfigurationOptions.none]
    var syrupOptions = [ConfigurationOptions.none]
    
    init() {
        do {
            let url = Bundle.main.url(forResource: "menu", withExtension: "json")!
            let data = try Data(contentsOf: url)
            let menuData = try JSONDecoder().decode(Menu.self, from: data)
            
            sections = menuData.sections
            milkOptions.append(contentsOf: menuData.milkOptions)
            syrupOptions.append(contentsOf: menuData.syrupOptions)
        }
        catch{
            fatalError("menu.json is missing or corrupt")
        }
    }
}
