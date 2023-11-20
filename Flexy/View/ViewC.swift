//
//  ViewC.swift
//  Flexy
//
//  Created by Henil Patel on 17/11/2023.
//

import SwiftUI

struct ViewC: View {
    var body: some View {
        @State var addSpacer = 5
        NavigationView {
            ZStack {
                Color.init(red: 232 / 255, green: 244 / 255, blue: 220 / 255)
                    .ignoresSafeArea()

                VStack {
                Text("please select a body part to get started")
                    
                Image("HomeScreenMonkey")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
        
//                    Text("Let's Stretch")
//                        .font(.title)
   
                    Spacer()
                    NavigationLink (destination: ViewB()) {
                            Text("Explore all exercises")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(20)
                                 }
//                    Button(action: {
//                        // Action to be performed when the button is tapped
//                        // You can navigate to another view or perform some other action here
//                        print("Button tapped!")
//                    }) {
//                        Text("Explore all exercises")
//                            .foregroundColor(.white)
//                            .padding()
//                            .background(Color.green)
//                            .cornerRadius(20)
//                    }
                }
               
            .navigationBarTitle("Let's Stretch")
                
                
                VStack{
                    HStack{
                        Spacer().frame(width: 160)
                        NavigationLink (destination: ViewB()) {
                            Text("")
                            // .padding()
                                .frame(width:150, height: 70)
                                .background(Color.brown)
                                .foregroundColor(.white)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        }}
                    
                    HStack{
                        NavigationLink (destination: ViewB()) {
                            Text("")
                            // .padding()
                                .frame(width:150, height: 70)
                                .background(Color.brown)
                                .foregroundColor(.white)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        }}
                    
                    NavigationLink (destination: ViewB()) {
                            Text("")
                               // .padding()
                                .frame(width:150, height: 70)
                                .background(Color.brown)
                                .foregroundColor(.white)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                 }
                    
                    HStack {
                        Spacer().frame(width: 80)
                        NavigationLink (destination: ViewB()) {
                                Text("")
                                   // .padding()
                                    .frame(width:150, height: 70)
                                    .background(Color.brown)
                                    .foregroundColor(.white)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        }
                    }
                    
                   
                    
                }
                
                
                
                
                
                }
            
            
            
            
            
           
                
            }
        }
        
    }




#Preview {
    ViewC()
}
