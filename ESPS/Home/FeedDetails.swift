//
//  FeedDetails.swift
//  ESPS
//
//  Created by Ramshad Basheer on 01/02/2021.
//

import SwiftUI

struct FeedDetailsView: View {
    let feed: Feed
    var body: some View {
        VStack(alignment: .leading) {
            Image(feed.imageName)
                .resizable()
                .clipped()
                .frame(height:150)
            
            HStack {
                Text(feed.title)
                    .fontWeight(.medium)
                    .padding([.leading, .bottom, .trailing])
                Spacer()
            }
            Text(feed.desc)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct FeedDetails_Previews: PreviewProvider {
    static var previews: some View {
        FeedDetailsView(feed: feedDataList[0])
    }
}
