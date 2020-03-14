//
//  GameList.swift
//  Referencer
//
//  Created by William Dower on 14/3/20.
//  Copyright © 2020 William Dower. All rights reserved.
//

import Foundation

class GameList {
    var games: [VideoGame] {
        didSet {
            self.gameNumber = self.games.count
        }
    }
    var listTitle: String
    var gameNumber: Int
    
    init(games: Array<VideoGame>, listTitle: String) {
        self.gameNumber = games.count
        self.games = games
        self.listTitle = listTitle
    }
}
