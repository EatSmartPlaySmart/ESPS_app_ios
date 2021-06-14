//
//  ContentView.swift
//  ESPS
//
//  Created by Ramshad Basheer on 29/01/2021.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Int? = nil
    
    init() {
            // 1.
        UINavigationBar.appearance().backgroundColor = UIColor.init(Color("primary"))
           
            // 2.
            UINavigationBar.appearance().largeTitleTextAttributes = [
                .foregroundColor: UIColor.black]
        
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "cabin", size: 32)!]

        }
    
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color("bg")
                    .edgesIgnoringSafeArea(.all)
                
                VStack() {
                    HStack {
                        HStack{
                            VStack {
                                Image("ic_logo")
                                    .resizable()
                                    .frame(width: 48, height: 48)
                                    .foregroundColor(Color("secondary"))
                            }
                            VStack {
                                HStack {
                                    Text("Eat Smart")
                                        .foregroundColor(Color("text_on_bg"))
                                        .font(Font.custom("cabin", size: 20))
                                        .fontWeight(.bold)
                                    Spacer()
                                }
                                HStack {
                                    Text("Play Smart")
                                        .foregroundColor(Color("text_on_bg"))
                                        .font(Font.custom("cabin", size: 20))
                                        .fontWeight(.bold)
                                    Spacer()
                                }
                            }
                            Spacer()
                            VStack {
                                Image("img_skip")
                                    .resizable()
                                    .scaledToFit()
                                    .rotation3DEffect(
                                        .degrees(180),
                                        axis: (x: 0.0, y: 1.0, z: 0.0))
                                    .padding(8)
                            }
                        }
                        .padding([.top, .horizontal], 16)
                    }
                    

                    
                    
                    VStack {
                        HStack {
                            NavigationLink(destination: RecipesView()) {
                                Grid(image: "ic_recipe", title: "\nRecipes")
                            }

                            NavigationLink(destination: MenuPlanningView()) {
                                Grid(image: "ic_menu", title: "Menu \nPlanning")
                            }
                        }
                        HStack {
                            NavigationLink(destination: ActivitiesView()) {
                                Grid(image: "ic_activity", title: "\nActivities")
                            }

                            NavigationLink(destination: PoliciesView()) {
                                Grid(image: "ic_policy", title: "\nPolicies")
                            }
                        }
                        HStack {
                            NavigationLink(destination: UsefulWebsiteView()) {
                                Grid(image: "ic_web", title: "Useful \nWebsites")
                            }

                            NavigationLink(destination: GeneralInfoView()) {
                                Grid(image: "ic_info", title: "General \nInfo")
                            }
                        }
                    }
                    .padding(16)
                }
            }
            .navigationBarTitle("Home")
            .navigationBarHidden(true)
            
        }
        .navigationViewStyle(StackNavigationViewStyle())

        .accentColor(.black)
    }
}

let grids = [
    Grid(image: "ic_info", title: "General Info")
]

struct Grid: View {
    let image: String
    let title: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 2,
                             style: .continuous)
                .foregroundColor(Color.white)
                .shadow(color: Color("gray"), radius: 1)
            VStack {
                Image(self.image)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color("secondary"))
                    .padding([.top, .leading, .trailing], 8)
                    
                    
                
                Text(self.title)
                    .foregroundColor(Color("text_gray"))
                    .font(Font.custom("cabin", size: 14))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.gray)
                    .padding(.all, 4.0)
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
