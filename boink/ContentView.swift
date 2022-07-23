//
//  ContentView.swift
//  boink
//
//  Created by TinkerTanker on 23/7/22.
//

import SwiftUI

struct ContentView: View {
    
    var emojis = [""]
    
    var body: some View {
        NavigationView {
            List(emojis, id: \.self) { emoji in
                Text(emoji)
                
            }
            .navigationTitle("Emojis")
            .navigation
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
