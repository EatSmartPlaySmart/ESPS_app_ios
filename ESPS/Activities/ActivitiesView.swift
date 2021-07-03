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
    @State private var bottomSheetPosition: BookBottomSheetPosition = .bottom
    
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
                            .foregroundColor(Color("text_on_bg"))
                            .font(Font.custom("cabin", size: 20))
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
                                                .foregroundColor(Color.white)
                                                .font(Font.custom("cabin", size: 14))
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
        .bottomSheet(bottomSheetPosition: self.$bottomSheetPosition, options: [.allowContentDrag, .showCloseButton(), .swipeToDismiss, .tapToDissmiss], headerContent: {
                VStack(alignment: .leading) {
                    Text("Submit an activity!")
                        .foregroundColor(Color("primary"))
                        .font(.title).bold()
                    Divider()
                        .padding(.trailing, -30)
                }
            }) {
                VStack {
                    HStack {
                        Text("Please submit an activity to be seen in the app!")
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
        .navigationTitle("Activities")
        
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
