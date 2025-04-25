//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Owen Larson on 4/23/25.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["👻", "🎃", "🕷️", "😈", "💀", "🕸️", "🧙‍♀️", "🙀", "👹", "😱", "☠️", "🍭"]

    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(
            numberOfPairsOfCards: 9,) { pairIndex in
                if emojis.indices.contains(pairIndex) {
                    return emojis[pairIndex]
                }
                return "⁉️"
            }
    }
        
    @Published private var model = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intents
    
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
