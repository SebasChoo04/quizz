//
//  BioQuizViewController.swift
//  Quizz
//
//  Created by Chiu Yee Hur on 8/11/18.
//  Copyright © 2018 SebastianChoo.Co. All rights reserved.
//

import UIKit

class BioQuizViewController: UIViewController {
    var chosen : [Int] = [0,0,0 ]
    @IBOutlet weak var cellwall1: UIButton!
    @IBOutlet weak var cellwall2: UIButton!
    @IBOutlet weak var cellwall3: UIButton!
    @IBOutlet weak var cytoplasm1: UIButton!
    @IBOutlet weak var cytoplasm2: UIButton!
    @IBOutlet weak var cytoplasm3: UIButton!
    @IBOutlet weak var nucleus1: UIButton!
    @IBOutlet weak var nucleus2: UIButton!
    @IBOutlet weak var nucleus3: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        cellwall1.setTitle(bio[0].question1, for: .normal)
        cellwall2.setTitle(bio[0].question2, for: .normal)
        cellwall3.setTitle(bio[0].question3, for: .normal)
        cytoplasm1.setTitle(bio[1].question1, for: .normal)
        cytoplasm2.setTitle(bio[1].question2, for: .normal)
        cytoplasm3.setTitle(bio[1].question3, for: .normal)
        nucleus1.setTitle(bio[2].question1, for: .normal)
        nucleus2.setTitle(bio[2].question2, for: .normal)
        nucleus3.setTitle(bio[2].question3, for: .normal)
    }
    
    
    // Do any additional setup after loading the view.
    @IBAction func cellwall1change(_ sender: Any) {
        cellwall1.backgroundColor = UIColor.blue
        cellwall2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        cellwall3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        cellwall1.isEnabled = false
        cellwall2.isEnabled = false
        cellwall3.isEnabled = false
        chosen[0] = 1
    }
    @IBAction func cellwall2change(_ sender: Any) {
        cellwall2.backgroundColor = UIColor.blue
        cellwall1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        cellwall3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        cellwall1.isEnabled = false
        cellwall2.isEnabled = false
        cellwall3.isEnabled = false
        chosen[0] = 2
    }
    @IBAction func cellwall3change(_ sender: Any) {
        cellwall3.backgroundColor = UIColor.blue
        cellwall1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        cellwall2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        cellwall1.isEnabled = false
        cellwall2.isEnabled = false
        cellwall3.isEnabled = false
        chosen[0] = 3
    }
    @IBAction func cytoplasm1change(_ sender: Any) {
        cytoplasm1.backgroundColor = UIColor.blue
        cytoplasm2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        cytoplasm3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        cytoplasm1.isEnabled = false
        cytoplasm2.isEnabled = false
        cytoplasm3.isEnabled = false
        chosen[1] = 1
    }
    @IBAction func cytoplasm2change(_ sender: Any) {
        cytoplasm2.backgroundColor = UIColor.blue
        cytoplasm1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        cytoplasm3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        cytoplasm1.isEnabled = false
        cytoplasm2.isEnabled = false
        cytoplasm3.isEnabled = false
        chosen[1] = 2
    }
    @IBAction func cytoplasm3change(_ sender: Any) {
        cytoplasm3.backgroundColor = UIColor.blue
        cytoplasm1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        cytoplasm2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        cytoplasm1.isEnabled = false
        cytoplasm2.isEnabled = false
        cytoplasm3.isEnabled = false
        chosen[1] = 3
    }
    @IBAction func nucleus1change(_ sender: Any) {
        nucleus1.backgroundColor = UIColor.blue
        nucleus2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        nucleus3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        nucleus1.isEnabled = false
        nucleus2.isEnabled = false
        nucleus3.isEnabled = false
        chosen[2] = 1
    }
    @IBAction func nucleus2change(_ sender: Any) {
        nucleus2.backgroundColor = UIColor.blue
        nucleus1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        nucleus3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        nucleus1.isEnabled = false
        nucleus2.isEnabled = false
        nucleus3.isEnabled = false
        chosen[2] = 2
    }
    @IBAction func nucleus3change(_ sender: Any) {
        nucleus3.backgroundColor = UIColor.blue
        nucleus1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        nucleus2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        nucleus1.isEnabled = false
        nucleus2.isEnabled = false
        nucleus3.isEnabled = false
        chosen[2] = 3
    }
    
    @IBAction func Result(_ sender: Any) {
        print(chosen)
        print(bio[0].answernumber)
        for i in 0...2 {
            if chosen[i] == bio[i].answernumber {
                result += 1
            }
            else {
                result += 0
            }
        }
        print(result)
        performSegue(withIdentifier: "bioResult", sender: Any.self)
    }
}
