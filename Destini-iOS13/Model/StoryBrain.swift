//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
//    let storyLine = [ Story(mainTitle: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right"), Story(mainTitle: "You see a tiger", choice1: "Shout for help", choice2: "Play dead"), Story(mainTitle: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps")
//    ]
    var storyIndex = 0
    
    func getStoryLine() -> String {
        return storyLine[storyIndex].mainTitle
    }
    
    func getChoice1() -> String {
        return storyLine[storyIndex].choice1
    }
    
    func getChoice2() -> String {
        return storyLine[storyIndex].choice2
    }
    
    mutating func nextStory(choice: String) {
        let selectedChoice = choice;
        switch storyIndex {
        case 0:
            if selectedChoice == "Choice 1" {
                storyIndex = 2
            } else {
                storyIndex = 1
            }
        case 1:
            if selectedChoice == "Choice 1" {
                storyIndex = 2
            } else {
                storyIndex = 3
            }
        case 2:
            if selectedChoice == "Choice 1" {
                storyIndex = 5
            } else {
                storyIndex = 4
            }
        default:
            storyIndex = 0
        }
    }
    
    
}
