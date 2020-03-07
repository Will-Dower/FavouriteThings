//
//  DetailView.swift
//  Referencer
//
//  Created by William Dower on 5/3/20.
//  Copyright © 2020 William Dower. All rights reserved.
//

import Foundation
import SwiftUI

final class DetailView: View {
    let game: VideoGame
    
    var body: some View {
        Text("Hello World!")
    }
    
    init(game: VideoGame) {
        self.game = game
    }
}
