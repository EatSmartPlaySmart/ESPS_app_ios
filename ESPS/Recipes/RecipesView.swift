//
//  RecipesView.swift
//  ESPS
//
//  Created by Ramshad Basheer on 29/01/2021.
//

import Foundation
import SwiftUI

struct RecipesView: View {
    
    @ObservedObject var searchBar: SearchBar = SearchBar()
    
    var body: some View {
            List{
                ForEach(
                 recipeList.filter {
                        searchBar.text.isEmpty ||
                         $0.title.localizedStandardContains(searchBar.text)
                    }
                ) { recipe in
                    NavigationLink(destination: RecipeDetails(recipe: recipe)) {
                        RecipeListItem(recipe: recipe)
                    }
                }
            }
            .navigationBarTitle("Recipes")
            .add(self.searchBar)
        }
}

struct RecipeListItem: View {
    let recipe: Recipe
    var body: some View {
        
        VStack {
            HStack {
                Image(recipe.imageName)
                    .resizable()
                    .frame(width: 72, height: 72)
                    .aspectRatio(contentMode: .fit)
            
                
                VStack {
                    HStack {
                        Text(recipe.title)
                            .font(.title3)
                        Spacer()
                    }
                    
                    HStack {
                        Text(recipe.desc)
                            .padding(.top, 8)
                        Spacer()
                    }
                    
                    Spacer()
                }
            }
            
            .background(Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0))
            .shadow(color: Color(red: 10, green: 10, blue: 10), radius: 8)
            .cornerRadius(8)
        }
    }
}

struct Recipe_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
