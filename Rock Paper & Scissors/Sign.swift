//
//  Sign.swift
//  Rock Paper & Scissors
//
//  Created by Tomas Alvarado JR on 2/23/23.
//

import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign {
    case rock
    case paper
    case scissors
    
    func emoji(_ choice: Sign) -> String {
        switch choice {
        case .rock:
            return "🪨"
        
        case .paper:
            return "📄"
            
        case .scissors:
            return "✂️"
        }
    
    func gameState(_ opponentSign: Sign) -> GameState {
        switch (self, opponentSign) {
        case (.rock, .rock):
            return .draw
        case (.rock, .paper):
            return .lose
        case (.rock, .scissors):
            return .win
            
        case (.paper, .paper):
            return .draw
        case (.paper, .scissors):
            return .lose
        case (.paper, .rock):
            return .win
            
        case (.scissors, .scissors):
            return .draw
        case (.scissors, .rock):
            return .lose
        case (.scissors, .paper):
            return .win
        }
    }
}

}


