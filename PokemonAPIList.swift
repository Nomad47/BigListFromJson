//
//  PokemonAPIList.swift
//  BigListFromJson
//
//  Created by Mark on 7/24/19.
//  Copyright © 2019 19AF OSS. All rights reserved.
//

import Foundation
//{
//    "count": 964,
//    "next": "https://pokeapi.co/api/v2/pokemon?offset=20&limit=20",
//    "previous": null,
//    "results": [
//    {
//    "name": "bulbasaur",
//    "url": "https://pokeapi.co/api/v2/pokemon/1/"
//    },
//    {
//    "name": "ivysaur",
//    "url": "https://pokeapi.co/api/v2/pokemon/2/"
//    },

struct PokemonAPIList : Decodable {
    var results: [PokemonListEntry]
}

struct PokemonListEntry : Decodable {
    var name: String
    var url: String
    
}
