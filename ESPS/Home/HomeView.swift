//
//  HomeView.swift
//  ESPS
//
//  Created by Ramshad Basheer on 29/01/2021.
//

import Foundation

import SwiftUI

struct HomeView: View {
    @ObservedObject var searchBar: SearchBar = SearchBar()

    var body: some View {
        
        NavigationView {
                   List {
                       ForEach(
                        feedDataList.filter {
                               searchBar.text.isEmpty ||
                                $0.title.localizedStandardContains(searchBar.text)
                           }
                       ) { feed in
                        HomeFeedListItem(feedItem: feed)
                       }
                   }
                       .navigationBarTitle("Home")
                       .add(self.searchBar)
               }
           }
        
        
}

struct HomeFeedListItem: View {
    
    let feedItem: Feed
    var body: some View {
        VStack {
            Image(feedItem.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            
            HStack {
                Text(feedItem.title)
                Spacer()
            }
            
        }
        .padding()
    }
}
