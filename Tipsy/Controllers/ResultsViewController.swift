//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Zeki Baklan on 21.06.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLAbel: UILabel!
    
    
    var getTotal : String = ""
    var getPerson : String = ""
    var getTip : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = getTotal
        settingsLAbel.text = "Split between \(getPerson) people \(getTip) tip."
    }
    
 
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
