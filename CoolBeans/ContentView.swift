//
//  ContentView.swift
//  CoolBeans
//
//  Created by Beau Leyba on 30/07/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var menu = Menu ()
    
    var body: some View {
        MenuView()
            .environmentObject(menu)
    }} 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
