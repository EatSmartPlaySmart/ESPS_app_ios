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
        
        ZStack {
            Color("bg")
                .edgesIgnoringSafeArea(.all)
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
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100, alignment: .center)
                    .scaledToFit()
                    .cornerRadius(8.0)
            
                
                VStack {
                    HStack {
                        Text(recipe.title)
                            .font(.title3)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    
                    HStack {
                        Text(recipe.desc)
                            .padding(.top, 8)
                            .lineLimit(3)
                            .font(.caption)
                        Spacer()
                    }
                    
                    Spacer()
                }
            }
            
        }
    }
}

struct Recipe_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
