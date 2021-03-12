//
//  NavigationDetailsView.swift
//  ESPS
//
//  Created by Ramshad Basheer on 12/03/2021.
//

import SwiftUI

struct ActivityDetailsView: View {
    let activity: Activity
    var body: some View {
        ScrollView {
            VStack {
                
                HStack {
                    Text("Equipments")
                        .font(.title)
                        .foregroundColor(Color("primary"))
                        .padding()
                    Spacer()
                }
                HStack {
                    Text(activity.equipments.joined(separator: ""))
                        .padding(.horizontal)
                    Spacer()
                }
                
                HStack {
                    Text("Type")
                        .font(.title)
                        .foregroundColor(Color("primary"))
                        .padding()
                    Spacer()
                }
                
                HStack {
                    Text(activity.activities[0])
                        .padding(.horizontal)
                    Spacer()
                }
                
            }
        }
        
    }
}

struct NavigationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetailsView(activity: activityData[0])
    }
}
