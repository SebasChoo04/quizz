//
//  StartViewController.swift
//  Quizz
//
//  Created by Chiu Yee Hur on 7/11/18.
//  Copyright © 2018 SebastianChoo.Co. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    @IBOutlet weak var imgview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapGesture))
        imgview.addGestureRecognizer(tapGesture)
        tapGesture.numberOfTouchesRequired = 1
        tapGesture.numberOfTapsRequired = 1
    }
    
    @objc func tapGesture() {
        performSegue(withIdentifier: "Start", sender: Any?.self)
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
