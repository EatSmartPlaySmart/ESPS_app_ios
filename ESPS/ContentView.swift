//
//  ContentView.swift
//  ESPS
//
//  Created by Ramshad Basheer on 29/01/2021.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Int? = nil
    
    
    
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color("bg")
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    VStack {
                        HStack{
                            VStack {
                                Image("ic_logo")
                                    .resizable()
                                    .frame(width: 24.0, height: 24.0)
                            }
                            VStack {
                                Text("Eat Smart")
                                Text("Play Smart")
                            }
                            Spacer()
                            VStack {
                                Image("img_skip")
                                    .resizable()
                                    .frame(width: 75.0, height: 75.0)
                                    .aspectRatio(contentMode: .fit)
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
                                Grid(image: "ic_info_1", title: "General \nInfo")
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Home")
                .navigationBarHidden(true)
        }
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
            RoundedRectangle(cornerRadius: 3,
                             style: .continuous)
                .foregroundColor(Color.white)
                .shadow(radius: 4)
            VStack {
                Image(self.image)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color("secondary"))
                    .padding([.top, .leading, .trailing], 8)
                    
                    
                
                Text(self.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                    .padding(.all, 4.0)
                    
            }
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}


//// Extension to call colors by .primary instead of Color("primary")
//extension Color {
//    static let primary = Color("primary")
//    static let primary_light = Color("primary_light")
//    static let secondary = Color("secondary")
//    static let secondary_light = Color("secondary_light")
//    static let bg = Color("bg")
//    static let bg_dark = Color("bg_dark")
//}


//
//
//extension Font {
//
//   /// Create a font with the large title text style.
//   public static var largeTitle: Font {
//       return Font.custom("Varela-Regular", size: UIFont.preferredFont(forTextStyle: .largeTitle).pointSize)
//   }
//
//   /// Create a font with the title text style.
//   public static var title: Font {
//       return Font.custom("Varela-Regular", size: UIFont.preferredFont(forTextStyle: .title1).pointSize)
//   }
//
//   /// Create a font with the headline text style.
//   public static var headline: Font {
//       return Font.custom("Varela-Regular", size: UIFont.preferredFont(forTextStyle: .headline).pointSize)
//   }
//
//   /// Create a font with the subheadline text style.
//   public static var subheadline: Font {
//       return Font.custom("Varela-Regular", size: UIFont.preferredFont(forTextStyle: .subheadline).pointSize)
//   }
//
//   /// Create a font with the body text style.
//   public static var body: Font {
//          return Font.custom("Varela-Regular", size: UIFont.preferredFont(forTextStyle: .body).pointSize)
//      }
//
//   /// Create a font with the callout text style.
//   public static var callout: Font {
//          return Font.custom("Varela-Regular", size: UIFont.preferredFont(forTextStyle: .callout).pointSize)
//      }
//
//   /// Create a font with the footnote text style.
//   public static var footnote: Font {
//          return Font.custom("Varela-Regular", size: UIFont.preferredFont(forTextStyle: .footnote).pointSize)
//      }
//
//   /// Create a font with the caption text style.
//   public static var caption: Font {
//          return Font.custom("Varela-Regular", size: UIFont.preferredFont(forTextStyle: .caption1).pointSize)
//      }
//
//   public static func system(size: CGFloat, weight: Font.Weight = .regular, design: Font.Design = .default) -> Font {
//       var font = "Varela-Regular"
//       switch weight {
//       case .bold: font = "Varela-Regular"
//       case .heavy: font = "Varela-Regular"
//       case .light: font = "Varela-Regular"
//       case .medium: font = "Varela-Regular"
//       case .semibold: font = "Varela-Regular"
//       case .thin: font = "Varela-Regular"
//       case .ultraLight: font = "Varela-Regular"
//       default: break
//       }
//       return Font.custom(font, size: size)
//   }
//}
//
