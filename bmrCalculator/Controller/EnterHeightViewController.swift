//
//  EnterHeightViewController.swift
//  bmrCalculator
//
//  Created by Samuel Hayden Graham on 5/6/23.
//

import UIKit

class EnterHeightViewController: UIViewController {
    
    //attributes
    var age: Int?
    var weight: Int?
    var height: Int?
    
    //brings in the components
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    
    //loads the view
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //navigates to the next page after it gets a non null
    @IBAction func nextPressed(_ sender: UIButton) {
        if heightSlider.value != 0 {
            performSegue(withIdentifier: "goToSelectGender", sender: self)
        }
    }
    
    //updates the label with the slider value
    @IBAction func heightSliderChange(_ sender: UISlider) {
        height = Int(sender.value)
        heightLabel.text = String(format: "%.0fin", sender.value)
    }
    
    //passes data to the next view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! SelectGenderViewController
        destinationVC.age = age
        destinationVC.height = height
        destinationVC.weight = weight
    }
}
