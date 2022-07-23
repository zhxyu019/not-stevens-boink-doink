//
//  ContentView.swift
//  boink
//
//  Created by TinkerTanker on 23/7/22.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var emojiSets = [
    EmojiSet(name: "big red chicken",
             emojis: ["🐔", "🐔", "🐔", "🐔"]),
    EmojiSet(name: "food", emojis: ["🍦", "🥞", "🍣"])
    
    ]
    
    var body: some View {
        NavigationView {
            List(emojiSets) { emojiSet in VStack(alignment: .leading) {
                    Text(emojiSet.name)
                        .font(.headline)
                    Text(emojiSet.emojis.joined())
                }
            }
              
            .navigationTitle("Emojis")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
