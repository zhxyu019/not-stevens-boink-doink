//
//  ContentView.swift
//  BoingBoing
//
//  Created by Zerui Wang on 23/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let emojiSets = [
            EmojiSet(name: "Fruits", emojis: ["🍌", "🍎", "🍓"]),
            EmojiSet(name: "Candy", emojis: ["🍩", "🍬"]),
            EmojiSet(name:"🥵", emojis: ["🥵"])
        ]
        NavigationView {
            List(emojiSets) { emojiSet in
                NavigationLink {
                    EmojiView(emojiSet: emojiSet)
                } label: {
                    VStack(alignment: .leading) {
                        Text(emojiSet.name) .font(.headline)
                        Text(emojiSet.emojis.joined())
                    }
                }
            }
        }.navigationTitle("Emoji moment")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
