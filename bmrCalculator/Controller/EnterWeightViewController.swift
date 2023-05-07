//
//  EnterWeightViewController.swift
//  bmrCalculator
//
//  Created by Samuel Hayden Graham on 5/6/23.
//

import UIKit

class EnterWeightViewController: UIViewController {

    //initialize attributes
    var age: Int?
    var weight: Int?
    
    
    //brings in the components
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    
    //loads view
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //navigates to next view if it gets a non null value in the slider
    @IBAction func nextPressed(_ sender: UIButton) {
        if weightSlider.value != 0 {
            performSegue(withIdentifier: "goToEnterHeight", sender: self)
        }
    }
    
    //updates the label according to the slider position value
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weight = Int(sender.value)
        weightLabel.text = String(format: "%.0flbs", sender.value)
    }
    
    //passes the data to the next view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! EnterHeightViewController
        destinationVC.age = age
        destinationVC.weight = weight
    }
}
