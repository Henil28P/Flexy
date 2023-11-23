//
//  ViewC.swift
//  Flexy
//
//  Created by Henil Patel on 17/11/2023.
// Tributaries, Mrunal, Tubusko, 
//

import SwiftUI

struct Home: View {
    //@State private var isBubbleTapped = false
    
    let colors: [Color] = [.orange]
        @State private var fgColor: Color = .gray
    
    var body: some View {
        
//        NavigationView {
            ZStack {
                
                // Color.init(red: 232 / 255, green: 244 / 255, blue: 220 / 255);
              
                VStack {
                   // Spacer()
                    Text("Let's Stretch")
                        .font(.title2)
                    
                    Text("Please click on any specific body parts")
                        .foregroundColor(.black)
                    
                    Image("HomeMonkeyTransparent")
                        .scaledToFit()
                        .cornerRadius(15)
                        .frame(maxWidth: .infinity)
                    
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
                    .padding(.horizontal, 16)
                    .padding(.top, -24)
                }
                
              //  ZStack {
//                NavigationLink(destination: ExerciseListView())
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
                                    .onTapGesture {
                                        fgColor = colors.randomElement()!
                                    }
                            )
                            .opacity(0.9)
                            .position(x: 150, y: 490)
                    
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
                            .position(x: 255, y: 335)
                
                        Text("Legs")
                            .font(.subheadline)
                            .bold()
                            .frame(width: 50, height: 50)
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 3)
                            )
                            .opacity(0.9)
                            .position(x: 200, y: 555)
                         
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
                            .position(x: 180, y: 420)
                            
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
                            .position(x: 130, y: 280)
                        }
                    
                //}
            }
        }


#Preview {
    Home()
}
