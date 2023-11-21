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
               
                Text ("Please click on any specific body part")
                    
                Image("HomeScreenMonkey")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
        
//                    Text("Let's Stretch")
//                        .font(.title)
   
                    Spacer()
                    NavigationLink (destination: ExerciseListView()) {
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
               
          //  .navigationBarTitle("Let's Stretch")
                
                
                VStack{
                    HStack{
                        Spacer().frame(width: 160)
                        NavigationLink (destination: ExerciseListView()) {
                            Text("Arms")
                            // .padding()
                                .frame(width:100, height: 60)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        }}
                    
                    HStack{
                        Spacer().frame(width:50)
                        NavigationLink (destination: ExerciseListView()) {
                            Text("Abs")
                            // .padding()
                                .frame(width:100, height: 60)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        }}
                    
                    
                    HStack {
                        Spacer().frame(width: 80)
                        NavigationLink (destination: ExerciseListView()) {
                                Text("Legs")
                                .bold()
                                   // .padding()
                                    .frame(width:100, height: 60)
                                    .background(Color.green)
                                    .foregroundColor(.white)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
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
