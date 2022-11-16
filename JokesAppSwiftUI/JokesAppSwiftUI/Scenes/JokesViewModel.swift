//
//  JokesViewModel.swift
//  JokesAppSwiftUI
//
//  Created by Supapon Pucknavin on 16/11/2565 BE.
//

import Foundation
import SwiftUI
import Alamofire

class JokesViewModel: ObservableObject {
    @Published var jokes = [String: Joke]()
    
    init() {
        getJokes()
    }
    
    func getJokes() {
    
        AF.request("https://api.chucknorris.io/jokes/random", method: .get).responseDecodable(of: Joke.self) { [weak self] response in
            switch(response.result) {
            case .success(let jocke):
                print(jocke)
                self?.jokes[jocke.id] = jocke
                break
            case .failure(let error):
                print(error)
                break
            }
        }
        
    }
    
   
}
