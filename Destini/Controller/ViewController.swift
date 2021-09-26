//
//  ViewController.swift
//  Destini
//
//  Created by Eetu Hernesniemi on 24.9.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var gameStories : StoryBrain = StoryBrain()
    
    override func viewDidLoad() {
        refreshView()
        super.viewDidLoad()
    }
    
    func refreshView() {
        let currentStory = gameStories.stories[gameStories.currentStoryIndex]
        storyLabel.text = currentStory.storyLabel
        choice1Button.setTitle(currentStory.userChoice1, for: .normal)
        choice2Button.setTitle(currentStory.userChoice2, for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let currentStoryIndex = gameStories.currentStoryIndex
        let currentStory = gameStories.stories[currentStoryIndex]
        let choice1GoToIndex: Int = currentStory.userChoice1GoToIndex
        let choice2GoToIndex: Int = currentStory.userChoice2GoToIndex
        if sender == choice1Button {
            gameStories.currentStoryIndex = choice1GoToIndex
        } else if sender == choice2Button {
            gameStories.currentStoryIndex = choice2GoToIndex
        } else {
            print("Error. Unidentified or invalid choice made by user.")
            exit(-1)
        }
        refreshView()
    }
}

