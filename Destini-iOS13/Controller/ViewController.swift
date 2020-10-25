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
    
    var storyBrain = StoryBrain()
                   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       updateUI()
        //loads the first title in the array
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        storyBrain.nextStory(userAnswer) 
        updateUI()
    }
    
    func updateUI() {
        //update the storyLabel text
        //update the choice1Button title
        //update the choice2Button title
        
        storyLabel.text = storyBrain.nextTitle()
        choice1Button.setTitle(storyBrain.nextchoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.nextchoice2(), for: .normal)
    }
    
}

