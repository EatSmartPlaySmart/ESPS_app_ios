//
//  RecipesData.swift
//  ESPS
//
//  Created by Ramshad Basheer on 02/02/2021.
//

import Foundation

struct Ingredient: Identifiable {
    let item: String
    let qty: String
    let id = UUID()
}

struct Recipe: Identifiable {
    
    let imageName: String
    let title: String
    let desc: String
    let prepTime: Int
    let cookTime: Int
    let ingredients : [Ingredient]
    let method: String
    let id = UUID()
}


let recipeList = [
    Recipe(imageName: "cooked rice", title: "Cooked Rice", desc: "cooked rice good", prepTime: 50, cookTime: 10, ingredients: [Ingredient(item: "Salt", qty: "1/2 tsp"), Ingredient(item: "Sugar", qty: "2 tbsp")], method: "Cook the salt"),
    Recipe(imageName: "cooked rice", title: "Cooked Rice", desc: "cooked rice good", prepTime: 50, cookTime: 10, ingredients: [Ingredient(item: "Salt", qty: "1/2 tsp"), Ingredient(item: "Sugar", qty: "2 tbsp")], method: "Cook the salt"),
    Recipe(imageName: "cooked rice", title: "Cooked Rice", desc: "cooked rice good", prepTime: 50, cookTime: 10, ingredients: [Ingredient(item: "Salt", qty: "1/2 tsp"), Ingredient(item: "Sugar", qty: "2 tbsp")], method: "Cook the salt"),
    Recipe(imageName: "cooked rice", title: "Cooked Rice", desc: "cooked rice good", prepTime: 50, cookTime: 10, ingredients: [Ingredient(item: "Salt", qty: "1/2 tsp"), Ingredient(item: "Sugar", qty: "2 tbsp")], method: "Cook the salt"),
]

