//
//  ViewController.swift
//  SpaceShip
//
//  Created by James Chun on 1/1/19.
//  Copyright © 2019 James Chun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var position: Int = 0
    
    @IBOutlet weak var spaceship: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        leftButton.layer.borderWidth = 1
        leftButton.layer.borderColor = UIColor.blue.cgColor
        rightButton.layer.borderWidth = 1
        rightButton.layer.borderColor = UIColor.blue.cgColor
    }

    @IBAction func moveLeft(_ sender: Any) {
        if spaceship.frame.minX >= leftButton.frame.width { // 30
            spaceship.frame.origin.x -= spaceship.bounds.size.width
        }
        updateButtons()
    }
    
    @IBAction func moveRight(_ sender: Any) {
        if spaceship.frame.maxX <= blueView.frame.width - rightButton.frame.width { // 240
            spaceship.frame.origin.x += spaceship.bounds.size.width
        }
        updateButtons()
    }
    
    func updateButtons() {
        leftButton.isEnabled = spaceship.frame.minX < leftButton.frame.width ? false : true
        rightButton.isEnabled = spaceship.frame.maxX > blueView.frame.width - rightButton.frame.width ? false : true
    }
    
}

