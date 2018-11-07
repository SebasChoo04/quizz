//
//  Physics1ViewController.swift
//  Quizz
//
//  Created by Chiu Yee Hur on 7/11/18.
//  Copyright © 2018 SebastianChoo.Co. All rights reserved.
//

import UIKit

class Physics1ViewController: UIViewController {
    let physicsText = " Physics is the study of the basic principles that govern the physical world around us. We'll start by looking at motion itself. ... To get the most out of physics, you'll need a solid understanding of algebra and a basic understanding of trigonometry."
    override func viewDidLoad() {
        super.viewDidLoad()
        text.text = physicsText
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var text: UITextView!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
