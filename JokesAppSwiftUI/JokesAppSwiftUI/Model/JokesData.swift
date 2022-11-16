//
//  JokesData.swift
//  JokesAppSwiftUI
//
//  Created by Supapon Pucknavin on 16/11/2565 BE.
//

import Foundation


struct Categories: Codable, Identifiable {
    var id = UUID()
    let value: [String]
}


struct Joke: Codable, Identifiable {
    let id: String
    let categories: [String]
    let icon_url: String
    let url: String
    let value: String
    let created_at: String
    let updated_at: String
}
