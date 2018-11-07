//
//  ResultViewController.swift
//  Quizz
//
//  Created by Chiu Yee Hur on 7/11/18.
//  Copyright © 2018 SebastianChoo.Co. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var Result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Result.text = String(result)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapped(_ sender: Any) {
        result = 0
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
