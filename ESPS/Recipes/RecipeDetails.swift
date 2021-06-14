//
//  RecipeDetails.swift
//  ESPS
//
//  Created by Ramshad Basheer on 02/02/2021.
//

import SwiftUI

struct RecipeDetails: View {
    
    
    let recipe: Recipe
    
    @State var checked = false
    
    var body: some View {
        GeometryReader { g in
            ScrollView {
                VStack {
                    
                    Image(recipe.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width, height: 200)
                        .clipped()

                    HStack {
                        
                        Image("ic_prep")
                            .resizable()
                            .frame(width: 30, height: 30)
                            
                        VStack {

                            Text(String(recipe.prepTime))
                                .foregroundColor(Color("text_on_bg"))
                                .font(Font.custom("cabin", size: 18))
                            Text("Mins")
                                .foregroundColor(Color("text_gray"))
                                .font(Font.custom("cabin", size: 12))
                        }

                        Image("ic_cook")
                            .resizable()
                            .frame(width: 30, height: 30)


                        VStack {
                            Text(String(recipe.cookTime))
                                .foregroundColor(Color("text_on_bg"))
                                .font(Font.custom("cabin", size: 18))
                            Text("Mins")
                                .foregroundColor(Color("text_gray"))
                                .font(Font.custom("cabin", size: 12))
                        }
                        
                    }

                    HStack {
                        Text("Ingredients")
                            .foregroundColor(Color("text_on_bg"))
                            .font(Font.custom("cabin", size: 20))
                            .fontWeight(.bold)
                            .padding([.top, .leading, .trailing])
                        Spacer()
                    }
                    
                    ForEach(recipe.ingredients) { ingredient in

                            VStack {
                                HStack {
                                    
                                    CheckboxField(id: recipe.id.uuidString, label: ingredient.item,
                                                  size: 14, color: Color("text_gray"))
                                        .padding(.leading)
                                    Text(ingredient.qty)
                                            .foregroundColor(Color("text_gray"))
                                            .font(Font.custom("cabin", size: 12))
                                            .fontWeight(.bold)
                                    Spacer()
                                }
                            }
                        }


                    HStack {
                        Text("Method")
                            .foregroundColor(Color("text_on_bg"))
                            .font(Font.custom("cabin", size: 20))
                            .fontWeight(.bold)
                            .padding([.top, .leading, .trailing])

                        Spacer()
                    }
                    
                    
                    HStack {
                        Text(recipe.method)
                            .foregroundColor(Color("text_gray"))
                            .font(Font.custom("cabin", size: 14))
                            .padding()
                        Spacer()
                    }


                    Spacer()
                }
            }
            .navigationBarTitle(recipe.title)
        }
    }
}

struct RecipeDetails_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetails(recipe: recipeList[0])
    }
}

