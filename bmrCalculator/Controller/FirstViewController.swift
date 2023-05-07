//
//  FirstViewController.swift
//  bmrCalculator
//
//  Created by Samuel Hayden Graham on 5/6/23.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func getStartedPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToEnterAge", sender: self)
    }
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {}

}
