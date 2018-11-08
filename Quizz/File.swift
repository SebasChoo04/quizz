//
//  File.swift
//  Quizz
//
//  Created by Chiu Yee Hur on 7/11/18.
//  Copyright © 2018 SebastianChoo.Co. All rights reserved.
//

import Foundation
struct questions {
    var question1 : String
    var question2 : String
    var question3 : String
    var answernumber : Int
}


    

var chem : [questions] = [questions(question1: "Element", question2: "Compound", question3: "Mixture", answernumber: 1),questions(question1: "Element", question2: "Compound", question3: "Mixture", answernumber: 2),questions(question1: "Element", question2: "Compound", question3: "Mixture", answernumber: 3)]

var physics : [questions] = [questions(question1: "Distance / Time", question2: "Speed * Time", question3: "Distance + Time", answernumber: 1),questions(question1: "Speed / Time", question2: "Speed + Time", question3: "Speed * Time", answernumber: 3), questions(question1: "Speed + Distance", question2: "Distance / Speed", question3: "Distance * Speed", answernumber: 2)]

var bio : [questions] = [questions(question1: "Wall Of Cell", question2: "Cell Wall", question3: "Cell Defences", answernumber: 2),questions(question1: "Cell Body", question2: "Center Of Cell", question3: "Cytoplasm", answernumber: 3),questions(question1: "Nucleus", question2: "Cell Brain", question3: "Main part of cell", answernumber: 1)]
