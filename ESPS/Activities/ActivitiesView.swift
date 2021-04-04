//
//  ActivitiesView.swift
//  ESPS
//
//  Created by Ramshad Basheer on 04/02/2021.
//

import SwiftUI

struct ActivitiesView: View {
    
    private var columns: [GridItem] = [
            GridItem(.flexible(), spacing: 16)
        ]
    
    var body: some View {
        
        
        GeometryReader { metrics in
            ZStack {
                Color("bg")
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: 0) {
                    Image("img_pa")
                        .resizable()
                        .scaledToFit()
                        .frame(height: metrics.size.height * 0.3)
                        .padding()
                        
                    HStack {
                        Text("Select an activity to learn more")
                            .font(.body)
                            .foregroundColor(Color("primary"))
                            .padding()
                        
                        Spacer()
                    }
                    ScrollView() {
                        LazyVGrid(columns: columns,spacing: 5) {
                            ForEach(activityData) {activity in
                                NavigationLink(
                                    destination: ActivityDetailsView(activity: activity)) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 3)
                                                .foregroundColor(Color("primary"))
                                            Text(activity.title)
                                                .font(.body)
                                                .foregroundColor(Color.white)
                                                .padding(8.0)
                                            
                                        }
                                    }
                            }
                        }
                    }
                    .padding()
                }
            }
        }
        .navigationTitle("Activities")
        
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
