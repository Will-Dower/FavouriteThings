//
//  VideoGame.swift
//  Referencer
//
//  Created by William Dower on 4/3/20.
//  Copyright © 2020 William Dower. All rights reserved.
//

import Foundation
import SwiftUI


/// This struct is the model of the app, containing all of the data about any particular video game.
struct VideoGame: Identifiable {
    
    /// Provides a unique ID for SwiftUI views
    let id = UUID()
    /// This string holds the input video game's title
    var title: String = ""
    /// The URL of the image to be loaded using loadImage()
    var imageURL: String = "https://i.imgur.com/Nkqztzw.jpg"
    /// The Image featuring the box art, located wherever the imageURL property of the struct is pointed
    var boxArt: Image?
    /// This string holds the input developer of the game
    var developer: String = ""
    /// This string holds the input release date of the game
    var releaseDate: String = ""
    /// This string holds the input user rating of the game
    var userRating: Double? //Optional, user rating may be unknown, Double out of 10
    /// This string holds the input critic rating of the game
    var criticRating: Int? //Optional, critic rating may be unknown, Int out of 100
    /// This string holds the input notes about the game
    var notes: String = ""
    
    /// This function loads the image at the URL in the struct's imageURL property
    ///
    /// Warning: If the URL cannot be loaded, the data is invalid or an image cannot be created from the data, the app will crash with fatalError("Image download failure")
    mutating func loadImage() -> Void {
        guard let url = URL(string: self.imageURL),
        let imageData = try? Data(contentsOf: url),
        let uiImage = UIImage(data: imageData) else {
               fatalError("Image download failure")
        }
        
        self.boxArt = Image(uiImage: uiImage).resizable()
    }
    
    /// Initialises game struct with all empty fields and a placeholder boxArt
    init() {
        self.loadImage()
    }
    
    /// Initialises game struct with given parameters
    init(title: String, imageURL: String, developer: String, releaseDate: String, userRating: Double, criticRating: Int) {
        self.title = title
        self.imageURL = imageURL
        self.developer = developer
        self.releaseDate = releaseDate
        self.userRating = userRating
        self.criticRating = criticRating
        
        self.loadImage()
    }
    
}
