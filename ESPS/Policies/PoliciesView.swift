//
//  PoliciesView.swift
//  ESPS
//
//  Created by Ramshad Basheer on 04/02/2021.
//

import SwiftUI
import MessageUI

struct PoliciesView: View {
    @State private var companyName: String = ""
    @State private var email: String = ""
    
    @State private var showingNutritionAlert = false
    @State private var showingPhysicalAlert = false
    
    @State private var paPolicySelected = false
    @State private var nutritionPolicySelected = false
    var body: some View {
        
        ScrollView {
            ZStack {
                Color("bg")
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                      Image(systemName: "person")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.gray)
                        .frame(width: 24, height: 24)
                      TextField("Enter your company name", text: $companyName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                      }
                    .padding([.leading, .top, .trailing])
                    
                    HStack {
                      Image(systemName: "envelope")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.gray)
                        .frame(width: 24, height: 24)
                      TextField("Enter your email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                      }
                    .padding([.leading, .bottom, .trailing])
                    
                    HStack {
                        Text("Select the policy you would like to generate for your OSHC")
                            .foregroundColor(Color("text_on_bg"))
                            .font(Font.custom("cabin", size: 20))
                        Spacer()
                    }.padding()
                    
                    // PA policy button
                    
                    Button(action: {
                        paPolicySelected.toggle()
                        if (nutritionPolicySelected) {
                            nutritionPolicySelected.toggle()
                        }
                    }) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color.white)
                                .shadow(radius: 3)
                            VStack {
                                HStack {
                                    Text("Physical activity policy")
                                        .foregroundColor(Color("text_on_bg"))
                                        .font(Font.custom("cabin", size: 24))
                                        .padding([.top, .leading, .trailing])
                                        
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
                                    Text(activityPolicyDesc)
                                        .foregroundColor(Color("text_gray"))
                                        .font(Font.custom("cabin", size: 12))
                                        .padding()
                                    Spacer()
                                }
                                
                                HStack {
                                    
                                    Spacer()
                                    Button(action: {
                                        showingPhysicalAlert.toggle()
                                    }) {
                                        Text("Preview")
                                            .foregroundColor(Color("text_on_bg"))
                                            .font(Font.custom("cabin", size: 22))
                                        .alert(isPresented: $showingPhysicalAlert) {
                                            Alert(title: Text("Physical Activity Policy Preview"), message: Text(getPhysicalPolicy(companyName: companyName)), dismissButton: .default(Text("Got it!")))
                                        }
                                    }
                                    .padding(.trailing, 8)
                                    
                                    Button(action: {
                                        paPolicySelected.toggle()
                                    }) {
                                        Text("Select")
                                            .foregroundColor(Color("text_on_bg"))
                                            .font(Font.custom("cabin", size: 22))
                                    }
                                    .padding(.trailing, 8.0)
                                }
                                Spacer()
                            }
                        }
                        
                        .padding()
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    // nutrition policy button
                    Button(action: {
                        nutritionPolicySelected.toggle()
                        if (paPolicySelected) {
                            paPolicySelected.toggle()
                        }
                    }) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color.white)
                                .shadow(radius: 3)
                            VStack {
                                HStack {
                                    Text("Nutrition Policy")
                                        .foregroundColor(Color("text_on_bg"))
                                        .font(Font.custom("cabin", size: 24))
                                        .padding([.top, .leading, .trailing])
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
                                    Text(nutritionPolicyDesc)
                                        .font(.caption)
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
                                            .foregroundColor(Color("text_on_bg"))
                                            .font(Font.custom("cabin", size: 22))
                                        .alert(isPresented: $showingNutritionAlert) {
                                            Alert(title: Text("Nutrition Policy Preview"), message: Text(getNutritionPolicy(companyName: companyName)), dismissButton: .default(Text("Got it!")))
                                        }
                                    }
                                    .padding(.trailing, 8)
                                    
                                    Button(action: {
                                        nutritionPolicySelected.toggle()
                                    }) {
                                        Text("Select")
                                            .foregroundColor(Color("text_on_bg"))
                                            .font(Font.custom("cabin", size: 22))
                                    }
                                    .padding(.trailing, 8)
                                    
                                    
                                }
                                Spacer()
                            }
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding()
                
                    Button(action: {
                        // get ui view controller to display alert when no email app found
                        let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first

                        if var topController = keyWindow?.rootViewController {
                            while let presentedViewController = topController.presentedViewController {
                                topController = presentedViewController
                            }
                            // send email
                            
                            var body = ""
                            
                            if (paPolicySelected) {
                                body = getPhysicalPolicy(companyName: companyName)
                            } else if (nutritionPolicySelected) {
                                body = getNutritionPolicy(companyName: companyName)
                            } else {
                                Alert(title: Text("Select one of the policy to generate!"))
                            }
                            
                            EmailHelper.shared.sendEmail(subject: "ESPS App Generated Sample Policy", body: body, to: email, vc: topController)
                        }

                        
                    }, label: {
                        HStack {
                                Spacer()
                                Text("Generate Policy!")
                                    .foregroundColor(Color.white)
                                    .font(Font.custom("cabin", size: 22))
                                    .padding(8)
                                Spacer()
                            }
                    })
                    .foregroundColor(.white)
                    .background(Color("primary"))
                    .cornerRadius(8)
                    .padding()
                    
                    
                
                }
                .navigationBarTitle("Generate Policies")
            }
        }
    }
  
}

struct PoliciesView_Previews: PreviewProvider {
    static var previews: some View {
        PoliciesView()
    }
}
