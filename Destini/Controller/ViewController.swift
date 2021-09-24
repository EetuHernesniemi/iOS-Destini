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
        storyLabel.text = gameStories.stories[gameStories.currentStoryIndex].description
    }

    @IBAction func choiceMade(_ sender: UIButton) {
    }
}

