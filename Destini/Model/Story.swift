//
//  Story.swift
//  Destini
//
//  Created by Eetu Hernesniemi on 24.9.2021.
//

struct Story {
    let storyId : Int!
    let storyLabel : String!
    let userChoice1: String!
    let userChoice2: String!
    let userChoice1GoToIndex: Int!
    let userChoice2GoToIndex: Int!
    
    init(_ id: Int, _ d: String, _ uc1: String, _ uc2: String, _ uc1R: Int, _ uc2R: Int){
        storyId = id
        storyLabel = d
        userChoice1 = uc1
        userChoice2 = uc2
        userChoice1GoToIndex = uc1R
        userChoice2GoToIndex = uc2R
    }
}
