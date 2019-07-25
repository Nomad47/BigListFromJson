//
//  NetworkingManager.swift
//  BigListFromJson
//
//  Created by Mark on 7/24/19.
//  Copyright © 2019 19AF OSS. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

//@available(iOS 13.0, *)


class NetworkingManager : BindableObject {
    var willChange = PassthroughSubject<NetworkingManager, Never>()
    
    var pokemonList = PokemonAPIList(results: []) {
        didSet {
            willChange.send(self)
        }
    }
    
    init() {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=250") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            let pokemonList = try! JSONDecoder().decode(PokemonAPIList.self, from: data)
            
            DispatchQueue.main.async {
                self.pokemonList = pokemonList
            }
        }.resume()
    }
}


