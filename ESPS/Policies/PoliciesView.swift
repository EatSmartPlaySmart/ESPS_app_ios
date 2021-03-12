//
//  PoliciesView.swift
//  ESPS
//
//  Created by Ramshad Basheer on 04/02/2021.
//

import SwiftUI

struct PoliciesView: View {
    @State private var companyName: String = ""
    @State private var email: String = ""
    
    @State private var showingNutritionAlert = false
    @State private var showingPhysicalAlert = false
    
    @State private var paPolicySelected = false
    @State private var nutritionPolicySelected = false
    var body: some View {
        
        ScrollView {
            VStack {
                HStack {
                  Image(systemName: "person").foregroundColor(.gray)
                  TextField("Enter your company name", text: $companyName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                  }
                .padding()
                
                HStack {
                  Image(systemName: "envelope").foregroundColor(.gray)
                  TextField("Enter your email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                  }
                .padding()
                
                HStack {
                    Text("Select the policy you would like to generate")
                        .foregroundColor(Color("primary"))
                    Spacer()
                }.padding()
                
                // PA policy button
                
                Button(action: {
                    paPolicySelected.toggle()
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 2)
                            .foregroundColor(Color.white)
                            .shadow(radius: 3)
                        VStack {
                            HStack {
                                Text("Physical activity policy")
                                    .font(.title2)
                                    .padding()
                                Spacer()
                                if(self.paPolicySelected == true) {
                                    Image(systemName: "checkmark.circle.fill")
                                        .resizable()
                                        .foregroundColor(Color.green)
                                        .frame(width: 24, height: 24, alignment: .center)
                                        .padding()
                                }
                            }
                            HStack {
                                Text("PA Policy description")
                                    .padding()
                                Spacer()
                            }
                            
                            HStack {
                                
                                Spacer()
                                Button(action: {
                                    showingPhysicalAlert.toggle()
                                }) {
                                    Text("Preview")
                                    .alert(isPresented: $showingPhysicalAlert) {
                                        Alert(title: Text("Physical Activity Policy Preview"), message: Text("asdfasdfasdf"), dismissButton: .default(Text("Got it!")))
                                    }
                                }
                                .padding(.trailing, 8)
                                
                                Button(action: {
                                    paPolicySelected.toggle()
                                }) {
                                    Text("Select")
                                }
                                .padding(.trailing, 8.0)
                            }
                            Spacer()
                        }
                    }
                    .padding()
                }
                
                // nutrition policy button
                Button(action: {
                    nutritionPolicySelected.toggle()
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 2)
                            .foregroundColor(Color.white)
                            .shadow(radius: 3)
                        VStack {
                            HStack {
                                Text("Nutrition Policy")
                                    .font(.title2)
                                    .padding()
                                Spacer()
                                if(self.nutritionPolicySelected == true) {
                                    Image(systemName: "checkmark.circle.fill")
                                        .resizable()
                                        .foregroundColor(Color.green)
                                        .frame(width: 24, height: 24, alignment: .center)
                                        .padding()
                                }
                            }
                            
                            
                            HStack {
                                Text("Nutrition Policy description")
                                    .padding()
                                Spacer()
                            }
                            
                            HStack {
                                Spacer()
                                
                                Button(action: {
                                    //nutritionPolicySelected.toggle()
                                    showingNutritionAlert.toggle()
                                }) {
                                    Text("Preview")
                                    .alert(isPresented: $showingNutritionAlert) {
                                        Alert(title: Text("Nutrition Policy Preview"), message: Text("asdfasdfasdf"), dismissButton: .default(Text("Got it!")))
                                    }
                                }
                                .padding(.trailing, 8)
                                
                                Button(action: {
                                    nutritionPolicySelected.toggle()
                                }) {
                                    Text("Select")
                                }
                                .padding(.trailing, 8)
                                
                                
                            }
                            Spacer()
                        }
                    }
                }
                .padding()
            
                Button(action: {
                    EmailHelper.shared.sendEmail(subject: "Anything...", body: "asdffasdfasdf", to: "rmshdbasheer@gmail.com")
                }, label: {
                    Text("Generate!")
                })
            
            }
            .navigationBarTitle("Generate Policies")
        }
    }
}

struct PoliciesView_Previews: PreviewProvider {
    static var previews: some View {
        PoliciesView()
    }
}
