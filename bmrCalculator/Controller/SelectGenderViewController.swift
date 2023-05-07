//
//  SelectGenderViewController.swift
//  bmrCalculator
//
//  Created by Samuel Hayden Graham on 5/6/23.
//

import UIKit

class SelectGenderViewController: UIViewController {
    
    //attributes
    var age: Int?
    var weight: Int?
    var height: Int?
    var gender: String?
    
    //components
    @IBOutlet weak var maleButton: UIButton!
    @IBOutlet weak var femaleButton: UIButton!
    
    //loads the view
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //gets the gender and navigates to the results view
    @IBAction func genderButtonPressed(_ sender: UIButton) {
        gender = sender.currentTitle
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    //passes the calculated bmi based on user inputs
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultViewController
        if gender == "Male" {
            destinationVC.bmr = (5 * weight!) + (16 * height!) - (5 * age!) + 5
        } else {
            destinationVC.bmr = (5 * weight!) + (16 * height!) - (5 * age!) - 161
        }
    }
}
