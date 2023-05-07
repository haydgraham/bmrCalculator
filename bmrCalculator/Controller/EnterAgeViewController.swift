//
//  EnterAgeViewController.swift
//  bmrCalculator
//
//  Created by Samuel Hayden Graham on 5/6/23.
//

import UIKit

class EnterAgeViewController: UIViewController {
    var age: Int = 0
    
    //connect the ui components to the code
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ageSlider: UISlider!
    
    //loads the view in
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //updates the label as the user slides the slider
    @IBAction func ageSliderChange(_ sender: UISlider) {
        let age = Int(sender.value)
        ageLabel.text = String(age)
    }
    
    //navigates to the next page after the user selects a non null value
    @IBAction func nextPressed(_ sender: UIButton) {
        if ageSlider.value != 0 {
            performSegue(withIdentifier: "goToEnterWeight", sender: self)
        }
    }
    
    //passes data to the next page before segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! EnterWeightViewController
        destinationVC.age = age
    }
}
