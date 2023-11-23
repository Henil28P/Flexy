//
//  summary.swift
//  Flexy
//
//  Created by Ridhi Kathuria on 21/11/2023.
//
import SwiftUI

/*#-code-walkthrough(HomeView.struct)*/

struct Summary: View {
    var body: some View {
        
        VStack {
            Text("You did it, Ellie! ")
            
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .foregroundColor(.black)
            
            Image("Award")
            
                .resizable()
                .scaledToFit()
            
            
            Text("You've conquered another daily stretch to add to your streak.")
            
                .padding(10)
                .foregroundColor(.black)
                .multilineTextAlignment(.center) // Use .leading, .center, or .trailing
            HStack{
                NavigationLink(destination: Home()) {
                    ZStack {
                        Circle()
                            .inset(by: 18)
                            .foregroundColor(.init(hue: 0.248, saturation: 0.150, brightness: 0.901))
                        Image(systemName: "square.and.arrow.up")
                            .font(.title2)
                            .foregroundColor(Color.black)
                    }
                }
                
                ZStack {
                    NavigationLink(destination: Home()) {
                        ZStack {
                            
                            Circle()
                                .inset(by: 18)
                                .foregroundColor(.init(hue: 0.248, saturation: 0.150, brightness: 0.901))
                            
                            Image(systemName: "star")
                                .font(.title2)
                                .foregroundColor(Color.black)
                        }
                    }
                }
                
            }
            VStack {
                HStack {
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color.init(hue: 0.248, saturation: 0.150, brightness: 0.901))
                            .cornerRadius(20)
                        Text("Completed")
                    }
                    .overlay(
                        Text("95%")
                            .font(.custom("Helvetica", size: 20))
                            .foregroundColor(Color.red)
                            .offset(x: 0, y: 30)
                    )
                    ZStack {
                        Rectangle()
                        
                            .foregroundColor(Color.init(hue: 0.248, saturation: 0.150, brightness: 0.901))                        .cornerRadius(20)
                        Text("Duration")
                    }
                    .overlay(
                    Text("3 min")
                        .font(.custom("Helvetica", size: 20))
                        .foregroundColor(Color.orange)
                        .offset(x: 0, y: 30)
                    )
                }
            }
            ZStack {
                Rectangle()
                    .foregroundColor(Color.init(hue: 0.248, saturation: 0.150, brightness: 0.901))
                    .cornerRadius(20)
                
                HStack {
                    VStack{
                        Text("How are you feeling now?")
                        HStack{
                            VStack{
                                Image("Maskgroup")
                                Text("Still Tense")
                            }
                            VStack{
                                Image("Maskgroup-3")
                                Text("Good")
                            }
                            VStack{
                                Image("Maskgroup-2")
                                Text("Flexed out")
                            }
                        }
                    }
                }
            }
                
                ZStack {
                    NavigationLink(destination: Home()) {
                        Text("Stop Exercise")
                    }
                    
//                    Button("Back to Home") {
//                        // Image(systemName: "voiceover")
//                    }
                    .foregroundColor(Color.white)
                    .frame(width: 300, height: 23)
                    .padding(18)
                    .background(Color(hue: 0.247, saturation: 0.779, brightness: 0.701))
                    .cornerRadius(13).shadow(color: .green, radius: 4, x: 1, y: 1)
                    .font(.title2)
                    
                }
                
                // Button(action: ShareLink) {
                //Label("Share", systemImage: //"square.and.arrow.up")
                // }
            }
            
            .padding()
            
            .background(Color.white)
            
        }
        
    }

  
    
    
    #Preview {
        Summary()
    }
    
    struct FontNames {
        static var americanTypwriter = "American Typewriter"
        static var arial = "Arial"
        static var baskerville = "Baskerville"
        static var chalkduster = "Chalkduster"
        static var courier = "Courier"
        static var georgia = "Georgia"
        static var helvetica = "Helvetica"
        static var palatino = "Palatino"
        static var zapfino = "Zapfino"
    }

