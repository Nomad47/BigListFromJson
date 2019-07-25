//
//  ContentView.swift
//  BigListFromJson
//
//  Created by Mark on 7/24/19.
//  Copyright © 2019 19AF OSS. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var networkingManager = NetworkingManager()
        var body: some View {
            // MARK: -  Views
            
            NavigationView {
                ScrollView {
                    
            ForEach(networkingManager.pokemonList.results, id: \.url) { pokemon in
                                Text(pokemon.name.capitalized)
                                }
            }.navigationBarTitle(Text("List Of Pokemon"))
                    .frame(width: 400, height: 400, alignment: .leading)
                
        }
    }
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
