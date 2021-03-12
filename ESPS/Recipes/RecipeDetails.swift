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
                    
                    
                    Text(recipe.title)
        //            HStack {
        //                    .padding(.horizontal)
        //                Spacer()
        //            }
                    
                    Image(recipe.imageName)

                    HStack {

                        Image("ic_prep")
                            .resizable()
                            .frame(width: 50, height: 50)
                        VStack {

                            Text(String(recipe.prepTime))
                            Text("Mins")
                        }

                        Image("ic_cook")
                            .resizable()
                            .frame(width: 50, height: 50)


                        VStack {
                            Text(String(recipe.cookTime))
                            Text("Mins")
                        }
                    }

                    HStack {
                        Text("Ingredients")
                            .padding([.top, .leading, .trailing])
                        Spacer()
                    }
                    
                    ForEach(recipe.ingredients) { ingredient in

                            VStack {
                                HStack {
                                    
                                    CheckboxField(id: recipe.id.uuidString, label: ingredient.item)
                                        .padding(.leading)
                                    Spacer()
                                    Text(ingredient.qty)
                                        .padding(.trailing)
                                }
                                Divider()
                            }
                        }


                    HStack {
                        Text("Method")
                            .padding(.horizontal)

                        Spacer()
                    }
                    
                    
                    HStack {
                        Text(recipe.method)
                            .padding(.horizontal)
                        Spacer()
                    }


                    Spacer()
                }
            }
        }
    }
}

//struct Checkbox: View {
//    @Binding var toggle: Bool
//    var text: String
//    var body: some View {
//        Button(action: {
//            self.toggle.toggle()
//        }) {
//            Image(self.toggle ? "checkbox-on" :  "checkbox-off")
//                .renderingMode(.original)
//                .resizable()
//                .padding(0)
//                .frame(width: 14.0, height: 14.0)
//                .background(Color.gray)
//            Text(text).padding(0)
//        }
//        .buttonStyle(PlainButtonStyle())
//        .background(Color(red: 0, green: 0, blue: 0, opacity: 0.02))
//        .cornerRadius(0)
//    }
//}

struct RecipeDetails_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetails(recipe: recipeList[0])
    }
}

