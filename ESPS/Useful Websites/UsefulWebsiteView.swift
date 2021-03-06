//
//  UsefulWebsiteView.swift
//  ESPS
//
//  Created by Ramshad Basheer on 04/02/2021.
//

import SwiftUI

struct UsefulWebsiteView: View {
    var body: some View {
        VStack {
            List(websiteList){ website in
                Link(destination: URL(string: website.url)!) {
                    VStack {
                        HStack {
                            Text(website.title)
                                .foregroundColor(Color("text_on_bg"))
                                .font(Font.custom("cabin", size: 16))
                                .fontWeight(.heavy)
                                .listRowBackground(Color.purple)
                                
                            Spacer()
                        }
                        
                        
                        HStack {
                            Text(website.desc)
                                .foregroundColor(Color("text_gray"))
                                .font(Font.custom("cabin", size: 14))
                                .listRowBackground(Color.purple)
                                .font(.caption)
                            Spacer()
                        }
                    }
                }
            }
            .navigationBarTitle("Useful Websites")
        }
    }
}

struct UsefulWebsiteView_Previews: PreviewProvider {
    static var previews: some View {
        UsefulWebsiteView()
    }
}
