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
    
    var S=StoryBrain()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text=S.storia[0].title
        choice1Button.setTitle(S.storia[0].choice1, for:.normal)
        choice2Button.setTitle(S.storia[0].choice2, for:.normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        S.checkContinuation(send: sender)
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text=S.storia[S.offset].title
        choice1Button.setTitle(S.storia[S.offset].choice1, for:.normal)
        choice2Button.setTitle(S.storia[S.offset].choice2, for:.normal)
    }
 
}

