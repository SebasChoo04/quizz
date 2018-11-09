//
//  ViewController.swift
//  Quizz
//
//  Created by Chiu Yee Hur on 7/11/18.
//  Copyright © 2018 SebastianChoo.Co. All rights reserved.
//

import UIKit

class ChemQuizViewController: UIViewController {
    var chosen : [Int] = [0,0,0 ]
    @IBOutlet weak var Element1: UIButton!
    @IBOutlet weak var Element2: UIButton!
    @IBOutlet weak var Element3: UIButton!
    @IBOutlet weak var Compound1: UIButton!
    @IBOutlet weak var Compound2: UIButton!
    @IBOutlet weak var Compound3: UIButton!
    @IBOutlet weak var Mixture1: UIButton!
    @IBOutlet weak var Mixture2: UIButton!
    @IBOutlet weak var Mixture3: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        Element1.setTitle(chem[0].question1, for: .normal)
        Element2.setTitle(chem[0].question2, for: .normal)
        Element3.setTitle(chem[0].question3, for: .normal)
        Compound1.setTitle(chem[1].question1, for: .normal)
        Compound2.setTitle(chem[1].question2, for: .normal)
        Compound3.setTitle(chem[1].question3, for: .normal)
        Mixture1.setTitle(chem[2].question1, for: .normal)
        Mixture2.setTitle(chem[2].question2, for: .normal)
        Mixture3.setTitle(chem[2].question3, for: .normal)
    }
    
    
    // Do any additional setup after loading the view.
    @IBAction func Element1change(_ sender: Any) {
        Element1.backgroundColor = UIColor.blue
        Element2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Element3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Element1.isEnabled = false
        Element2.isEnabled = false
        Element3.isEnabled = false
        chosen[0] = 1
    }
    @IBAction func Element2change(_ sender: Any) {
        Element2.backgroundColor = UIColor.blue
        Element1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Element3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Element1.isEnabled = false
        Element2.isEnabled = false
        Element3.isEnabled = false
        chosen[0] = 2
    }
    @IBAction func Element3change(_ sender: Any) {
        Element3.backgroundColor = UIColor.blue
        Element1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Element2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Element1.isEnabled = false
        Element2.isEnabled = false
        Element3.isEnabled = false
        chosen[0] = 3
    }
    @IBAction func Compound1change(_ sender: Any) {
        Compound1.backgroundColor = UIColor.blue
        Compound2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Compound3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Compound1.isEnabled = false
        Compound2.isEnabled = false
        Compound3.isEnabled = false
        chosen[1] = 1
    }
    @IBAction func Compound2change(_ sender: Any) {
        Compound2.backgroundColor = UIColor.blue
        Compound1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Compound3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Compound1.isEnabled = false
        Compound2.isEnabled = false
        Compound3.isEnabled = false
        chosen[1] = 2
    }
    @IBAction func Compound3change(_ sender: Any) {
        Compound3.backgroundColor = UIColor.blue
        Compound1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Compound2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Compound1.isEnabled = false
        Compound2.isEnabled = false
        Compound3.isEnabled = false
        chosen[1] = 3
    }
    @IBAction func Mixture1change(_ sender: Any) {
        Mixture1.backgroundColor = UIColor.blue
        Mixture2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Mixture3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Mixture1.isEnabled = false
        Mixture2.isEnabled = false
        Mixture3.isEnabled = false
        chosen[2] = 1
    }
    @IBAction func Mixture2change(_ sender: Any) {
        Mixture2.backgroundColor = UIColor.blue
        Mixture1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Mixture3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Mixture1.isEnabled = false
        Mixture2.isEnabled = false
        Mixture3.isEnabled = false
        chosen[2] = 2
    }
    @IBAction func Mixture3change(_ sender: Any) {
        Mixture3.backgroundColor = UIColor.blue
        Mixture1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Mixture2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Mixture1.isEnabled = false
        Mixture2.isEnabled = false
        Mixture3.isEnabled = false
        chosen[2] = 3
    }
    
    @IBAction func Result(_ sender: Any) {
        print(chosen)
        print(chem[0].answernumber)
        for i in 0...2 {
            if chosen[i] == chem[i].answernumber {
                result += 1
            }
            else {
                result += 0
            }
        }
        print(result)
        performSegue(withIdentifier: "ChemResult", sender: Any.self)
    }
}
