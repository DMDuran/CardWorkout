//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Marco Duran on 11/9/22.
//

import UIKit

class CardSelectionVC: UIViewController {

    //Creating Outlets (When you want to access the properties of that object.)
    
    //IBoutlet will give us access to the object in our code not just in our storyboard
    @IBOutlet var cardImageView: UIImageView!
    //Grabbing all buttons in storyboard that way we can customize them in one go
    @IBOutlet var buttons: [UIButton]!
    //Creating an array so we can have Images shuffle
    var cards: [UIImage] = Deck.allValues
    
    
    //Going to force unwrap this timer becuase we are not going to be relying on any other data for this timer
    var timer: Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        //Running this loop for create a rounded couner for all buttons tied to (@IBOutlet var buttons: [UIButton]!)
        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }
    
    
    //This will invalidate the timer when you leave the screen or go to a different one
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }

    
    //Function that will be shuffling images every 0.5 seconds.
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil,
        repeats: true)
    }
    
    
    @objc func showRandomImage() {
        //Creating a default face for the optional.  This is going to be the ace card.
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    
    
    //Creating Actions (When you want something to be done.)
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
    
    
}
