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
                    Text(website.title)
                        .listRowBackground(Color.purple)
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
