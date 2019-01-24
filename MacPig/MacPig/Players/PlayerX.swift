//
//  PlayerX.swift
//  MacPig
//
//  Created by Student on 1/24/19.
//  Copyright © 2019 Michael Thornton. All rights reserved.
//

import Foundation

class PlayerX: PlayerProtocol {
    var holdCap = 18
    var holdCapBonus = 2
    var riskyZone = 21
    func willPlayToTotalOf(_ goal: Int, withTurnScoreOf turnScore: Int, withPlayerTotal currentTotal: Int, againstOpponentWith opponentTotal: Int) -> Bool {
        if currentTotal + turnScore >= goal {
            return false
        }
        if(currentTotal == 0 || goal - opponentTotal >= riskyZone){
            if(turnScore < opponentTotal-holdCap){
                return turnScore <= holdCap + holdCapBonus
            }
            return turnScore <= holdCap
        }//else
        return true
    }
    
}

extension PlayerX: CustomStringConvertible {
    
    var description: String {
        return "PlayerX"
    }
    
} // end extension

