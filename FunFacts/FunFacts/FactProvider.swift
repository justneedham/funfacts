//
// Created by Justin Needham on 2019-02-02.
// Copyright (c) 2019 ___Treehouse___. All rights reserved.
//

import Foundation
import GameKit

struct FactProvider {
    let facts = [
        "Ants stretch when they wake up in the morning",
        "Ostriches can run faster than horses",
        "Mammoths still walked the Earth when the Great Pyramid was being built",
        "On average, it takes 66 days to form a new habit",
        "Some penguins can leap 2-3 meters out of the water",
        "The state of Florida is bigger than England",
        "Some bamboo plants can grow almost a meter in just one day",
        "It takes about 8 minutes for the light from Sun to reach Earth",
        "You are born with 300 bones; by the time you are an adult you will 206"
    ]

    func randomFact(previousFact: String?) -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
        if previousFact != nil {
            let lastNumber = facts.firstIndex(of: previousFact!)
            if randomNumber != lastNumber {
                return facts[randomNumber]
            }
            return randomFact(previousFact: previousFact!)
        }
        return facts[randomNumber]
    }
}