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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Running this loop for create a rounded couner for all buttons tied to (@IBOutlet var buttons: [UIButton]!)
        for button in buttons {
            button.layer.cornerRadius = 8
        }
        
    }

    //Creating Actions (When you want something to be done.)
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
    }

    @IBAction func rulesButtonTapped(_ sender: UIButton) {
    }
    
}
