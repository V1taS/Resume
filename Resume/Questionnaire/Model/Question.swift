//
//  Question.swift
//  Resume
//
//  Created by Виталий Сосин on 29.05.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import Foundation

struct Question {
    let name: String
    let age: String
    let workExperience: String
    
    static func getQuestion() -> [Question] {
        return [Question(name: "What is your name?",
                 age: "How old are you?",
                 workExperience: "What is IT experience?")]
    }
}
