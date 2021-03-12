//
//  MenuPlanningView.swift
//  ESPS
//
//  Created by Ramshad Basheer on 04/02/2021.
//

import SwiftUI

struct MenuPlanningView: View {
    @State private var checklistVisible = false
    @State private var inAdditionVisible = false
    @State private var foodToAvoidVisible = false
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Use this checklist to plan your breakfast and afternoon tea in OSHC")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    Spacer()
                }
                
                HStack {
                    Text("Does you Breakfast/Afternoon tea each day include?")
                        .foregroundColor(Color("primary"))
                        .padding()
                    Spacer()
                    
                    if (!checklistVisible) {
                        Button(action: {
                            checklistVisible.toggle()
                        }, label: {
                            Image(systemName: "arrowtriangle.down.fill")
                                .foregroundColor(Color("secondary"))
                                .padding()
                        })
                        
                    } else {
                        Button(action: {
                            checklistVisible.toggle()
                        }, label: {
                            Image(systemName: "arrowtriangle.up.fill")
                                .foregroundColor(Color("secondary"))
                                .padding()
                        })
                    }
                }
                
                if (checklistVisible) {
                    ForEach(checklistData) { data in
                        MenuPlanItem(title: data.title, desc: data.desc)
                    }
                }
                
                HStack {
                    Text("In addition...")
                        .foregroundColor(Color("primary"))
                        .padding()
                    Spacer()
                    
                    if (!inAdditionVisible) {
                        Button(action: {
                            inAdditionVisible.toggle()
                        }, label: {
                            Image(systemName: "arrowtriangle.down.fill")
                                .foregroundColor(Color("secondary"))
                                .padding()
                        })
                        
                    } else {
                        Button(action: {
                            inAdditionVisible.toggle()
                        }, label: {
                            Image(systemName: "arrowtriangle.up.fill")
                                .foregroundColor(Color("secondary"))
                                .padding()
                        })
                    }
                }
                
                if (inAdditionVisible) {
                    ForEach(inAdditionData) {data in
                        MenuPlanItem(title: data.title, desc: data.desc)
                    }
                }
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(Color("bg"))
                    
                    VStack {
                        HStack {
                            Text("Food to avoid")
                                .font(.headline)
                                .padding()
                            Spacer()
                            if (!foodToAvoidVisible) {
                                Button(action: {
                                    foodToAvoidVisible.toggle()
                                }, label: {
                                    Image(systemName: "arrowtriangle.down.fill")
                                        .foregroundColor(Color("secondary"))
                                        .padding()
                                })
                                
                            } else {
                                Button(action: {
                                    foodToAvoidVisible.toggle()
                                }, label: {
                                    Image(systemName: "arrowtriangle.up.fill")
                                        .foregroundColor(Color("secondary"))
                                        .padding()
                                })
                            }
                            
                            
                        }
                        
                        if (foodToAvoidVisible) {
                            ForEach(foodToAvoidData, id: \.self) { string in
                                HStack {
                                    Text(string)
                                    Spacer()
                                }.padding()
                            }
                        }
                    
                    }
                }.padding()
                
            }
        }
        .navigationBarTitle("Menu Checklist")
    }

}

struct MenuPlanningView_Previews: PreviewProvider {
    static var previews: some View {
        MenuPlanningView()
    }
    
}

struct MenuPlanItem: View {
    var title: String
    var desc: String
    @State private var showingAlert = false
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(Color("bg"))
            
            VStack {
                
                HStack {
                    CheckboxField(id: UUID().uuidString, label: self.title)
                    
                    if (self.desc != "") {
                        Button(action: {
                                    self.showingAlert = true
                                }) {
                                    Image(systemName: "info.circle")
                                }
                                .alert(isPresented: $showingAlert) {
                                    Alert(title: Text("Description"), message: Text(self.desc), dismissButton: .default(Text("Got it!")))
                                }
                    }
                        
                }
            }
            .padding()
        }
    }
}


struct MenuPlanData: Identifiable {
    
    let title: String
    let desc: String
    let id = UUID()
}

let checklistData = [
    
    MenuPlanData(title: "A Cereal Based Food",
                 desc: "Breakfast cereals (less than 15g/100 g of sugar or less than 25 g/100 g sugar if they contain dried fruit), breads, fruit bread, plain cracker biscuits, rice cakes and rice crackers, corn thins, muffins, fruit buns, crumps, pikelets, pasta rice, noodles and couscous\nNote:Choose wholemeal/wholegrain varieties"),
    MenuPlanData(title: "A Fruit and Vegetable", desc: "Fresh, frozen, canned fruit (canned in unsweetened juice not syrup) or dried fruit, but not juice.\nRaw or cooked vegetables including salad vegetables, fresh, canned or frozen vegetables"),
    MenuPlanData(title: "Milk, Yoghurt, Cheese", desc: "Reduced fat milks, cheese, cheese spread, yoghurt and milk alternatives (e.g sory) with added calcium (100 mg/100 ml).\nNote: Cream cheese, cream, sour cream and butter are not high sources of calcium.")
]

let inAdditionData = [

    MenuPlanData(title: "Serve enough of each food group to allow each child to have a serve from each group", desc: ""),
    MenuPlanData(title: "Every week include at least three different varieties from each food group", desc: ""),
    MenuPlanData(title: "Only serve Sometimes foods twice a term (including vacation care)", desc: "Sometimes food are high in fat, sugar and salt and are not needed. They can lead to tooth decay and weight gain and leave less room for healthy foods.")
]

let foodToAvoidData = [
    "Fairy bread, pastries",
    "asdfasdf",
    "adfsadwerwer"
]
