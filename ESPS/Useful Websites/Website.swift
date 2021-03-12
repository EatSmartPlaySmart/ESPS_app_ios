//
//  Website.swift
//  ESPS
//
//  Created by Ramshad Basheer on 19/02/2021.
//

import Foundation


struct Website: Identifiable {
    let title: String
    let desc: String
    let url: String
    let id = UUID()
}

let websiteList = [
    
    Website(title: "Heart Foundation", desc: "Healthy eating information", url: "https://www.google.com"),
    Website(title: "Heart Foundation", desc: "Healthy eating information", url: "https://www.google.com"),
    Website(title: "Heart Foundation", desc: "Healthy eating information", url: "https://www.google.com")
    
]



