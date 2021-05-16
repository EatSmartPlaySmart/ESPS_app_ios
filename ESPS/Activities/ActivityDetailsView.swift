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
        ZStack {
            Color("bg")
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                ZStack {
                    
                    Color("bg")
                    
                    VStack {
                        HStack {
                            Text("Equipments")
                                .foregroundColor(Color("text_on_bg"))
                                .font(Font.custom("cabin", size: 16))
                                .padding()
                            Spacer()
                        }
                        HStack {
                            Text(activity.equipments.joined(separator: ""))
                                .foregroundColor(Color("text_gray"))
                                .font(Font.custom("cabin", size: 14))
                                .padding(.horizontal)
                            Spacer()
                        }
                        
                        if (activity.type == ACTIVITY_TYPE.INDOOR_OUTDOOR && activity.activities.count > 1) {
                            
                            IndoorView(instruction: activity.activities[0])
                            OutdoorView(instruction: activity.activities[1])
                        } else if (activity.type == ACTIVITY_TYPE.INDOOR_OUTDOOR && activity.activities.count == 1) {
                            HStack {
                                Text("Instructions")
                                    .foregroundColor(Color("text_on_bg"))
                                    .font(Font.custom("cabin", size: 16))
                                    .padding()
                                Spacer()
                            }
                            
                            HStack {
                                Text(activity.activities[0])
                                    .foregroundColor(Color("text_gray"))
                                    .font(Font.custom("cabin", size: 14))
                                    .padding(.horizontal)
                                Spacer()
                            }
                        } else if (activity.type == ACTIVITY_TYPE.INDOOR) {
                            IndoorView(instruction: activity.activities[0])
                        } else {
                            OutdoorView(instruction: activity.activities[0])
                        }
                    }
                }
            }
            .navigationTitle(activity.title)
        }
        
    }
}

struct IndoorView: View {
    let instruction: String
    
    var body: some View {
        VStack {
            HStack {
                Text("Indoor Instructions")
                    .foregroundColor(Color("text_on_bg"))
                    .font(Font.custom("cabin", size: 16))
                    .padding()
                Spacer()
            }
            
            HStack {
                Text(instruction)
                    .foregroundColor(Color("text_gray"))
                    .font(Font.custom("cabin", size: 14))
                    .padding(.horizontal)
                Spacer()
            }
        }
    }
}

struct OutdoorView: View {
    let instruction: String
    
    var body: some View {
        VStack {
            HStack {
                Text("Outdoor Instructions")
                    .foregroundColor(Color("text_on_bg"))
                    .font(Font.custom("cabin", size: 16))
                    .padding()
                Spacer()
            }
            
            HStack {
                Text(instruction)
                    .foregroundColor(Color("text_gray"))
                    .font(Font.custom("cabin", size: 14))
                    .padding(.horizontal)
                Spacer()
            }
        }
    }
}

struct NavigationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetailsView(activity: activityData[0])
    }
}
