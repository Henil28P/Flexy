//
//  ViewC.swift
//  Flexy
//
//  Created by Henil Patel on 17/11/2023.
// Tributaries, Mrunal, Tubusko, 
//

import SwiftUI

struct Home: View {
    @State private var isBubbleTapped = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // Color.init(red: 232 / 255, green: 244 / 255, blue: 220 / 255);
                
                VStack {
                    Text("Let's Stretch")
                        .font(.title2)
                    
                    Text("Please click on any specific body parts")
                        .foregroundColor(.black)
                    
                    Image("HomeScreenMonkey")
                        .scaledToFit()
                        .cornerRadius(15)
                    
                    HStack {
                        NavigationLink(destination: ExerciseListView()) {
                            Text("Explore All Related Exercises")
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.green)
                                .cornerRadius(20)
                        }
                    }
                    .padding(16) // Adjust the padding value according to your preference
                }
                
              //  ZStack {
                    
                        Text("Groin")
                            .font(.subheadline)
                            .bold()
                            .frame(width: 50, height: 50)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 3)
                            )
                            .opacity(0.9)
                            .position(x: 160, y: 510)
                    
                        Text("Arms")
                            .font(.subheadline)
                            .bold()
                            .frame(width: 50, height: 50)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 3)
                            )
                            .opacity(0.9)
                            .position(x: 280, y: 280)
                         
                        Text("Abs")
                            .font(.subheadline)
                            .bold()
                            .frame(width: 50, height: 50)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 3)
                            )
                            .opacity(0.9)
                            .position(x: 190, y: 420)
                            
                            Text("Neck")
                                .font(.subheadline)
                                .bold()
                                .frame(width: 50, height: 50)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .stroke(Color.white, lineWidth: 3)
                                )
                                .opacity(0.9)
                                .position(x: 130, y: 300)
                            
                        
                          
//                                Button(action: {
//                                    // Toggle the state when the button is tapped
//                                    isBubbleTapped.toggle()
//                                }) {
//                                    Text("Legs")
//                                        .font(.subheadline)
//                                        .bold()
//                                        .frame(width: 50, height: 50)
//                                        .background(isBubbleTapped ? Color.orange : Color.green)
//                                        .foregroundColor(.white)
//                                        .clipShape(Circle())
//                                        .overlay(
//                                            Circle()
//                                                .stroke(Color.white, lineWidth: 3)
//                                        )
//                                        .opacity(isBubbleTapped ? 1.0 : 0.9)
//                                        .position(x: 220, y: 550)
//                                }
//                            
//                            
//                        //}
//                        
//                       
//                            
//                            Text("Wrist")
//                                .font(.subheadline)
//                                .bold()
//                                .frame(width: 50, height: 50)
//                                .background(Color.green)
//                                .foregroundColor(.white)
//                                .clipShape(Circle())
//                                .overlay(
//                                    Circle()
//                                        .stroke(Color.white, lineWidth: 3)
//                                )
//                                .opacity(0.9)
//                                .position(x: 100, y: 455)
                        }
                    
                }
            }
        }


#Preview {
    Home()
}
