//
//  BioResultViewController.swift
//  Quizz
//
//  Created by Chiu Yee Hur on 8/11/18.
//  Copyright © 2018 SebastianChoo.Co. All rights reserved.
//

import UIKit

class BioResultViewController: UIViewController {
    @IBOutlet weak var bioResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bioResult.text = String(result)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapped(_ sender: Any) {
        result = 0
    }

}
