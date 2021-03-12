//
//  HomeFeedData.swift
//  ESPS
//
//  Created by Ramshad Basheer on 29/01/2021.
//

import Foundation
import SwiftUI

struct Feed: Identifiable {
    let imageName: String
    let title: String
    let desc: String
    let id = UUID()
}


let feedDataList = [
    Feed(imageName: "img_food_label", title: "Food poisoning", desc: "food poison bad"),
    Feed(imageName: "img_food_label", title: "Food asdf poisoning", desc: "food poison bad"),
    Feed(imageName: "img_food_label", title: "Food poisoning", desc: "food poison bad"),
    Feed(imageName: "img_food_label", title: "Food poisoning", desc: "food poison bad"),
    Feed(imageName: "img_food_label", title: "Food poisoning", desc: "food poison bad"),
    Feed(imageName: "img_food_label", title: "Food poisoning", desc: "food poison bad"),
    Feed(imageName: "img_food_label", title: "Food poisoning", desc: "food poison bad"),
    Feed(imageName: "img_food_label", title: "Food poisoning", desc: "food poison bad")
    
]
