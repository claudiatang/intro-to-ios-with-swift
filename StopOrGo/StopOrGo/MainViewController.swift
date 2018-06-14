//
//  ViewController.swift
//  StopOrGo
//
//  Created by Lauren Grimes on 14/6/18.
//  Copyright © 2018 codelikeagirl. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var redTrafficLightButton: UIButton!
    @IBOutlet weak var greenTrafficLightButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var moreInformationButton: UIButton!
    
    var currentTrafficLight: TrafficLightColor = TrafficLightColor.Green

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // This will change the transparency of the button
    // and then move to the next traffic light
    private func changeSelectedButton() {
        switch currentTrafficLight {
            case TrafficLightColor.Amber:
                // Our next traffic light colour will be Red
                redTrafficLightButton.alpha = 1.0
                currentTrafficLight = TrafficLightColor.Red
            case TrafficLightColor.Green:
                // Our next traffic light colour will be Amber
                greenTrafficLightButton.alpha = 0.5
                currentTrafficLight = TrafficLightColor.Amber
            case TrafficLightColor.Red:
                // Our next traffic light colour will be Green
                redTrafficLightButton.alpha = 0.5
                greenTrafficLightButton.alpha = 1.0
                currentTrafficLight = TrafficLightColor.Green
        }
    }
}
