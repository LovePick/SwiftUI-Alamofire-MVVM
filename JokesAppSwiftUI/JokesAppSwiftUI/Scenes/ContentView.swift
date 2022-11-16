//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Supapon Pucknavin on 16/11/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    
    // MARK: - FUNCTION
    func addJoke() {
        jokesVM.getJokes()
    }
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List(jokesVM.jokes.map{$1}){ item in
                Text(item.value)
            }
            .toolbar{
                Button {
                    addJoke()
                } label: {
                    Text("Get new Joke")
                }

            }
            .navigationTitle("Jokes App")
            
            
        }//: NAVIGATIONVIEW
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
