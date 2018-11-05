//
//  ViewController.swift
//  Quizz
//
//  Created by Sebastian Choo on 5/11/18.
//  Copyright © 2018 SebastianChoo.Co. All rights reserved.
//

import UIKit

class IntroductionViewController: UIViewController {

    @IBOutlet weak var chemistryButton: UIButton!
    @IBOutlet weak var introTextImages: UIImageView!
    @IBOutlet weak var physicsButton: UIButton!
    @IBOutlet weak var biologyButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        chemistryButton.isHidden = true
        physicsButton.isHidden = true
        biologyButton.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        let image1: UIImage = UIImage(named: "Intro1")!
        let image2: UIImage = UIImage(named: "Intro2")!
        introTextImages = UIImageView(image: image1)
    
        introTextImages = UIImageView(image: image2)
        chemistryButton.isHidden = false
        physicsButton.isHidden = false
        biologyButton.isHidden = false

        
        
    }


}

