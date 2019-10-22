//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct StoryBrain{
    let storia=[
        Story(
                    a: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
                    b: "I'll hop in. Thanks for the help!", choice1Destination: 2,
                    c: "Better ask him if he's a murderer first.", choice2Destination: 1
                ),
                Story(
                    a: "He nods slowly, unfazed by the question.",
                    b: "At least he's honest. I'll climb in.", choice1Destination: 2,
                    c: "Wait, I know how to change a tire.", choice2Destination: 3
                ),
                Story(
                    a: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
                    b: "I love Elton John! Hand him the cassette tape.", choice1Destination: 5,
                    c: "It's him or me! You take the knife and stab him.", choice2Destination: 4
                ),
                Story(
                    a: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
                    b: "The", choice1Destination: 0,
                    c: "End", choice2Destination: 0
                ),
                Story(
                    a: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
                    b: "The", choice1Destination: 0,
                    c: "End", choice2Destination: 0
                ),
                Story(
                    a: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
                    b: "The", choice1Destination: 0,
                    c: "End", choice2Destination: 0
                )
]
    var offset:Int=0
    
    init() {
    }
    mutating func checkContinuation(send: UIButton){
        if send.currentTitle==storia[offset].choice1{
            offset = storia[offset].choice1Destination
        }else{
            offset = storia[offset].choice2Destination
        }
    }
}
