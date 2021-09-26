//
//  StoryBrain.swift
//  Destini
//
//  Created by Eetu Hernesniemi on 24.9.2021.
//

struct StoryBrain {
    let stories = [
        Story(0, "You see a fork in the road.", "Take a left.", "Take a right", 1, 2),
        Story(1, "You see a tiger.", "Shout for help", "Play dead.", 3,3),
        Story(2, "You find a treasure checst.", "Open it.", "Check for traps.", 3,3),
        Story(3, "Everything is all right.", "Play again.", "Play again.", 0,0),
    ]
    var currentStoryIndex : Int = 0
}
