//
//  Card.swift
//  DeckOfCards
//
//  Created by Caleb Strong on 7/31/17.
//  Copyright © 2017 Caleb Strong. All rights reserved.
//

import Foundation

struct Card {
    
    let value: String
    let suit: String
    let imageEndpoint: String
}

extension Card {
    
    fileprivate static var valueKey: String { return "value" }
    fileprivate static var suitKey: String { return "suit" }
    fileprivate static var imageinEndpointKey: String { return "image" }
    
    init?(dictionary: [String: Any]) {
        guard let value = dictionary[Card.valueKey] as? String,
            let suit = dictionary[Card.suitKey] as? String,
            let imageEndpoint = dictionary[Card.imageinEndpointKey] as? String else { return nil }
    
        self.init(value: value, suit: suit, imageEndpoint: imageEndpoint)
    }
}
