//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Owen Larson on 4/23/25.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
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
    
    var cards: Array<Card> {
        return model.cards
    }
    
    var color: Color {
        return .orange
    }
    
    var score: Int {
        model.score
    }
    
    // MARK: - Intents
    
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
