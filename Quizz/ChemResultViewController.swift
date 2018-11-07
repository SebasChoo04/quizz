//
//  ChemResultViewController.swift
//  Quizz
//
//  Created by Chiu Yee Hur on 7/11/18.
//  Copyright © 2018 SebastianChoo.Co. All rights reserved.
//

import UIKit

class ChemResultViewController: UIViewController {
    @IBOutlet weak var ChemResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChemResult.text = String(result)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapped(_ sender: Any) {
        result = 0
    }
}
