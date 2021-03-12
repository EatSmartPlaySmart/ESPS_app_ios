//
//  test.swift
//  ESPS
//
//  Created by Ramshad Basheer on 10/03/2021.
//

import SwiftUI

struct test: View {
    var body: some View {
        NavigationView {
            ZStack {
                
                Color.orange
                
                VStack {
                    HStack {
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
                    HStack {
                        Text("sdfsdf")
                    }
                    Spacer()
                }
            }
            .ignoresSafeArea(.all)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
