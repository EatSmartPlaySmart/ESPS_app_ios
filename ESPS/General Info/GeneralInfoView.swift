//
//  GeneralInfoView.swift
//  ESPS
//
//  Created by Ramshad Basheer on 04/02/2021.
//

import SwiftUI

struct GeneralInfoView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("It is important for children to develop healthy eating and physical activity habits early in life to:")
                        .font(.headline)
                    Spacer()
                }.padding()
                
                HStack {
                    Text("• Ensure healthy growth and development\n• Achieve and maintain haelthy weight\n• Develop strong bones and muscles\n• Develop gross motor skills\n• Improve fitness, strength and flexibility\n• Support good mental health and reduce stress")
                    Spacer()
                }.padding()
                
                
                HStack {
                    Text("Out of School Hours Care (OSHC) services are valuable in promoting healthy eating and physical activity by providing healthy food and drinks and opportunities for active play.\nBeing a good role model helps to promotw healthy behaviours. Children will notice not just what you say but what you do.\nEat and drink with the children, be involved with physical activities, and look for opportunities to talk with children about health when you prepare and serve food.")
                        .font(.subheadline)
                    Spacer()
                }.padding()
                
                
            }
        }
    }
}

struct GeneralInfoView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralInfoView()
    }
}
