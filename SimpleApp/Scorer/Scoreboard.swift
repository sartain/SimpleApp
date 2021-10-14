//
//  Scoreboard.swift
//  SimpleApp
//
//  Created by Alex Sartain on 14/10/2021.
//

import Foundation
class Scoreboard {
    
    private var score: Int
    
    init(){
        self.score = 0
    }
    
    func getScore() -> Int {
        self.score
    }
    
    func answerQuestion(correct: Bool) {
        self.score += 3
    }
}
