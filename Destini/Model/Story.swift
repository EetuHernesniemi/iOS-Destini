//
//  Story.swift
//  Destini
//
//  Created by Eetu Hernesniemi on 24.9.2021.
//

struct Story {
    let description : String!
    let userChoice1: String!
    let userChoice2: String!
    
    init(_ d: String, _ uc1: String, _ uc2: String){
        description = d
        userChoice1 = uc1
        userChoice2 = uc2
    }
}
