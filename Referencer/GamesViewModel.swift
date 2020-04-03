//
//  GameViewModel.swift
//  Referencer
//
//  Created by William Dower on 14/3/20.
//  Copyright © 2020 William Dower. All rights reserved.
//

import Foundation
import SwiftUI

/// The struct holding all of the games and corresponding detailViewModels used by the app.
struct GamesViewModel {
    
    let viewModelsLabel = "Video Games"
    let unknownLabel = "Unknown"
    let unknownDouble = Double(0.0)
    let unknownInt = 0
    var games: [VideoGame] {
        didSet {
            self.viewModels = []
            for i in 0..<self.games.count {
                self.viewModels.append(GameDetailViewModel(game: self.games[i]))
            }
        }
    }
    var viewModels: [GameDetailViewModel] = []
    
    ///Adds a game to the games stored in the ViewModel.
    ///
    /// - Parameters:
    ///   -game: Game to add to the ViewModel.
    mutating func addGame(_ game: VideoGame) -> Void {
        games.append(game)
    }
    
    ///Adds an empty game to the games stored in the ViewModel.
    mutating func addGame() -> Void {
        games.append(VideoGame())
    }
    
    ///Removes a game from the ViewModel.
    ///
    /// - Parameters:
    ///   -indices: Index set of the game(s) to remove
    mutating func removeGame(_ indices: IndexSet) {
        indices.forEach { self.games.remove(at: $0) }
        if self.games.count == 0 {
            self.addGame()
        }
    }
    
    ///Initialises the ViewModel with 4 pre-loaded games for demonstration
    init() {
        self.games = []
        
        self.addGame(VideoGame(title: "Minecraft", imageURL: "https://i.imgur.com/hDE2TIm.jpg", developer: "Mojang", releaseDate: "17/5/2009", userRating: 7.7, criticRating: 93))
        self.addGame(VideoGame(title: "Steep", imageURL: "https://i.imgur.com/Jnt4nOs.jpg", developer: "Ubisoft", releaseDate: "2016/12/2", userRating: 6.8, criticRating: 72))
        self.addGame(VideoGame(title: "Red Dead Redemption 2", imageURL: "https://i.imgur.com/buKG2h2.jpg", developer: "Rockstar Games", releaseDate: "26/10/2018", userRating: 8.1, criticRating: 97))
        self.addGame(VideoGame(title: "Fortnite", imageURL: "https://i.imgur.com/zNyYcqG.jpg", developer: "Epic Games", releaseDate: "25/7/2017", userRating: 3.7, criticRating: 78))
    }
}
