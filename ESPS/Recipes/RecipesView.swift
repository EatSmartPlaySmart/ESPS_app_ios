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
                            .foregroundColor(Color("text_on_bg"))
                            .font(Font.custom("cabin", size: 20))
                            .fontWeight(.bold)
                        Spacer()
                    }
                    
                    HStack {
                        Text(recipe.desc)
                            .foregroundColor(Color("text_gray"))
                            .font(Font.custom("cabin", size: 12))
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
