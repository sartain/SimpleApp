//
//  Scoreboard.swift
//  SimpleApp
//
//  Created by Alex Sartain on 14/10/2021.
//

import Foundation
class Scoreboard {
    
    private var score: Int
    private var questionCount: Int
    private let maximumQuestions: Int = 10
    
    init(){
        self.score = 0
        self.questionCount = 1
    }
    
    func getScore() -> Int {
        self.score
    }
    
    func answerQuestion(correct: Bool) {
        if(self.questionCount <= maximumQuestions){
            let addToScore = (questionCount % 3 == 0) ? 6 : 3
            correct ? self.score += addToScore : nil
            self.questionCount += 1
        }
    }
}
