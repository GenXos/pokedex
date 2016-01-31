//
//  Pokemon.swift
//  pokedex-by-genxos
//
//  Created by Todd Fields on 2016-01-30.
//  Copyright © 2016 Todd Fields. All rights reserved.
//

import Foundation

class Pokemon {
    
    private var _name: String!
    private var _pokedexId: Int!
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    init (name: String, pokedexId: Int) {
        
        self._name = name
        self._pokedexId = pokedexId
    }
    
    
}