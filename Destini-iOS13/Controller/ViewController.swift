//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()   // 모델 객체 생성
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }

    func updateUI() {
        storyLabel.text = storyBrain.getStoryLine()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
    @IBAction func choice1ButtonTapped(_ sender: UIButton) {
        storyBrain.nextStory(choice: "Choice 1")
        updateUI()
    }
    
    @IBAction func choice2ButtonTapped(_ sender: UIButton) {
        storyBrain.nextStory(choice: "Choice 2")
        updateUI()
    }
    
    
    
    
}

