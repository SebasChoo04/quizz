//
//  PhysicViewController.swift
//  Quizz
//
//  Created by Chiu Yee Hur on 7/11/18.
//  Copyright © 2018 SebastianChoo.Co. All rights reserved.
//

import UIKit
var result = 0
class Physic3ViewController: UIViewController {
    var chosen : [Int] = [1,1,1]
    @IBOutlet weak var Speed1: UIButton!
    @IBOutlet weak var Speed2: UIButton!
    @IBOutlet weak var Speed3: UIButton!
    @IBOutlet weak var Distance1: UIButton!
    @IBOutlet weak var Distance2: UIButton!
    @IBOutlet weak var Distance3: UIButton!
    @IBOutlet weak var Time1: UIButton!
    @IBOutlet weak var Time2: UIButton!
    @IBOutlet weak var Time3: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        Speed1.setTitle(physics[0].question1, for: .normal)
        Speed2.setTitle(physics[0].question2, for: .normal)
        Speed3.setTitle(physics[0].question3, for: .normal)
        Distance1.setTitle(physics[1].question1, for: .normal)
        Distance2.setTitle(physics[1].question2, for: .normal)
        Distance3.setTitle(physics[1].question3, for: .normal)
        Time1.setTitle(physics[2].question1, for: .normal)
        Time2.setTitle(physics[2].question2, for: .normal)
        Time3.setTitle(physics[2].question3, for: .normal)
        Speed1.layer.cornerRadius = 16
        Speed2.layer.cornerRadius = 16
        Speed3.layer.cornerRadius = 16
        Distance1.layer.cornerRadius = 16
        Distance2.layer.cornerRadius = 16
        Distance3.layer.cornerRadius = 16
        Time1.layer.cornerRadius = 16
        Time2.layer.cornerRadius = 16
        Time3.layer.cornerRadius = 16
    }

    
        // Do any additional setup after loading the view.
    @IBAction func Speed1change(_ sender: Any) {
        Speed1.backgroundColor = UIColor.blue
        Speed2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Speed3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Speed1.isEnabled = false
        Speed2.isEnabled = false
        Speed3.isEnabled = false
        chosen[0] = 1
    }
    @IBAction func Speed2change(_ sender: Any) {
        Speed2.backgroundColor = UIColor.blue
        Speed1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Speed3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Speed1.isEnabled = false
        Speed2.isEnabled = false
        Speed3.isEnabled = false
        chosen[0] = 2
    }
    @IBAction func Speed3change(_ sender: Any) {
        Speed3.backgroundColor = UIColor.blue
        Speed1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Speed2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Speed1.isEnabled = false
        Speed2.isEnabled = false
        Speed3.isEnabled = false
        chosen[0] = 3
    }
    @IBAction func Distance1change(_ sender: Any) {
        Distance1.backgroundColor = UIColor.blue
        Distance2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Distance3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Distance1.isEnabled = false
        Distance2.isEnabled = false
        Distance3.isEnabled = false
        chosen[1] = 1
    }
    @IBAction func Distance2change(_ sender: Any) {
        Distance2.backgroundColor = UIColor.blue
        Distance1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Distance3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Distance1.isEnabled = false
        Distance2.isEnabled = false
        Distance3.isEnabled = false
        chosen[1] = 2
    }
    @IBAction func Distance3change(_ sender: Any) {
        Distance3.backgroundColor = UIColor.blue
        Distance1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Distance2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Distance1.isEnabled = false
        Distance2.isEnabled = false
        Distance3.isEnabled = false
        chosen[1] = 3
    }
    @IBAction func Time1change(_ sender: Any) {
        Time1.backgroundColor = UIColor.blue
        Time2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Time3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Time1.isEnabled = false
        Time2.isEnabled = false
        Time3.isEnabled = false
        chosen[2] = 1
    }
    @IBAction func Time2change(_ sender: Any) {
        Time2.backgroundColor = UIColor.blue
        Time1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Time3.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Time1.isEnabled = false
        Time2.isEnabled = false
        Time3.isEnabled = false
        chosen[2] = 2
    }
    @IBAction func Time3change(_ sender: Any) {
        Time3.backgroundColor = UIColor.blue
        Time1.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Time2.backgroundColor = UIColor(red: 255, green: 159, blue: 28, alpha: 0)
        Time1.isEnabled = false
        Time2.isEnabled = false
        Time3.isEnabled = false
        chosen[2] = 3
    }
    
    @IBAction func Result(_ sender: Any) {
        print(chosen)
        print(physics[0].answernumber)
        for i in 0...2 {
            if chosen[i] == physics[i].answernumber {
                result += 1
            }
            else {
                result += 0
            }
        }
        print(result)
        performSegue(withIdentifier: "PhysicResult", sender: Any.self)
    }
    
    

    /*    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
