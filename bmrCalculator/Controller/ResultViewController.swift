//
//  ResultViewController.swift
//  bmrCalculator
//
//  Created by Samuel Hayden Graham on 5/6/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    //attribute
    var bmr: Int?
    
    //component
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //gives the bmr to the uilabel when the view loads in
        resultLabel.text = String(bmr!)
    }
}
