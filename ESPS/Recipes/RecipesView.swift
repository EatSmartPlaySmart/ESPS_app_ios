//
//  RecipesView.swift
//  ESPS
//
//  Created by Ramshad Basheer on 29/01/2021.
//

import Foundation
import SwiftUI
import BottomSheet

enum BookBottomSheetPosition: CGFloat, CaseIterable {
    case middle = 0.6, bottom = 0.125, hidden = 0
}

struct RecipesView: View {
    

    @ObservedObject var searchBar: SearchBar = SearchBar()
    @State private var bottomSheetPosition: BookBottomSheetPosition = .bottom
    let backgroundColors: [Color] = [Color(red: 0.2, green: 0.85, blue: 0.7), Color(red: 0.13, green: 0.55, blue: 0.45)]
        
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
        .bottomSheet(bottomSheetPosition: self.$bottomSheetPosition, options: [.allowContentDrag, .showCloseButton(), .swipeToDismiss, .tapToDissmiss], headerContent: {
                VStack(alignment: .leading) {
                    Text("Submit a recipe!")
                        .foregroundColor(Color("primary"))
                        .font(.title).bold()
                    Divider()
                        .padding(.trailing, -30)
                }
            }) {
                VStack {
                    HStack {
                        Text("Please submit a recipe to be seen in the app!")
                            .fixedSize(horizontal: false, vertical: true)
                            .padding()
                        
                    }
                    HStack {
                        Spacer()
                        Link(destination: URL(string: "https://uow.au1.qualtrics.com/jfe/form/SV_41wqxDxI9e9g9dI")!) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 16)
                                    .foregroundColor(Color("primary"))
                                    .frame(width: 72, height: 48)
                                Text("Submit")
                                    .foregroundColor(Color.white)
                            }.padding(16)
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
