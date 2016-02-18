//
//  MainVC.swift
//  Magic8Ball
//
//  Created by Shin, Edward on 2/18/16.
//  Copyright (c) 2016 Shin, Edward. All rights reserved.
//

import UIKit
import AVFoundation

class MainVC: UIViewController,AVAudioPlayerDelegate  {
    
    var audioPlater:AVAudioPlayer?
    
    @IBOutlet weak var answerText: UILabel!
    
    var answers = [
        "It is certain",
        "Its is decidedly so",
        "Without a doubt",
        "Yes, definitely",
        "You may rely on it",
        "As I see it, yes",
        "Most likely",
        "Outlook is good",
        "Yes",
        "Signs point to yes",
        "Reply Hazy, Try again",
        "Ask again later",
        "Better not tell you now",
        "Cannot predict now",
        "Concentrate and ask again",
        "Don't count on it",
        "My reply is no",
        "My sources say no",
        "Outlook is not good",
        "Very doubtful"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent) {
        getAnswerTapped(UIEvent)
    }
    
    @IBAction func getAnswerTapped(sender: AnyObject) {
        answerText.text = getAnswer()
        answerText.hidden = false
    }
    
    func getAnswer()->String{
        var random = Int(arc4random_uniform(UInt32(answers.count)))
        let result = answers[random]
        return result
    }

}
