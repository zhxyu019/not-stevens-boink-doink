//
//  emojiStruct.swift
//  boink
//
//  Created by Katelyn Kang Jia Xuan on 23/7/22.
//

import Foundation

struct EmojiSet: Identifiable {
    var id = UUID()
    var name: String
    var emojis: [String]
}
