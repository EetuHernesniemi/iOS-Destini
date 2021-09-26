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
    }
}

