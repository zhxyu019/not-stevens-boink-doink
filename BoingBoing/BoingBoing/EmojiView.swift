//
//  EmojiView.swift
//  BoingBoing
//
//  Created by Zerui Wang on 23/7/22.
//

import SwiftUI
import Subsonic

struct EmojiView: View {
    var emojiSet: EmojiSet
    @State var selEmojis: [String] = []
    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                ForEach(emojiSet.emojis, id: \.self) { emoji in
                    Button {
                        selEmojis.append(emoji)
                    } label: {
                        Text(emoji).font(.system(size: 100))
                    }
                }
            }
            BouncyView(emojis: selEmojis) { surface in
                switch surface {
                case .emoji:
                    print("Crashed into another emoji")
                    play(sound: "VanishaSucks.m4a")
                case .wall:
                    print("Crashed into wall")
                    play(sound: "randomSchoolSOng.m4a")
                }
            }
        }
    }
}

struct EmojiSet: Identifiable {
    var id = UUID()
    var name: String
    var emojis: [String]
}

enum CollisionSurface {
    case emoji
    case wall
}
