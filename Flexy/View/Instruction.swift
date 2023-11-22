//
//  ViewA.swift
//  Flexy
//
//  Created by Henil Patel on 17/11/2023.
//

import AVKit
import SwiftUI
import UIKit

struct Instruction: View {
    
    let url = URL(string: "Final 1.mov")!
    
    var body: some View {
        NavigationView {
            VStack {
                VideoPlayer(player: AVPlayer(url: url))
            }
        }
        
        //        ZStack {
//            HStack {
//                Text("")
//                Image(systemName: "chevron.backward")
//                    .foregroundColor(.blue)
//                Button("Back") {
//                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                }
//                Spacer()
//            }
//            Text("Speedy Leg Extension")
//                .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
//        }
        
        ZStack {
            Color.init(hue: 0.248, saturation: 0.150, brightness: 0.901)
            
//            Text("Flexy")
//                .foregroundColor(Color.white)
//                .font(.system(size: 100.0))
            
            // Add Monkey animation or image
            VStack {
                // Image("monkey")
                
                Text("Speedy Leg Extension")
                    .font(.title2)
                    .bold()
                
                Text("Sitting for too long? Legs feeling stiff? This speedy leg extension is your quick fix to ease leg cramps, hip and back pains.")
                    .padding()
                
                VStack {
                    Text("1. Place your phone against the wall with clear view for front facing camera.\n2. Sit with your back straight and your shoulders back.")
                    Text("3. Stand up from your chair distributiong your weight evenly.\n4. Sit down and repeat.")
                }
                .padding()
                
                NavigationLink(destination: Feedback()) {
                    
                    Text("Let's Start")
                        .foregroundColor(Color.white)
                        .frame(width: 300, height: 23)
                        .padding(18)
                        .background(Color(hue: 0.247, saturation: 0.779, brightness: 0.701))
                        .cornerRadius(13).shadow(color: .green, radius: 4, x: 1, y: 1)
                        .font(.title2)
                }
                
//                Button("Let's Start") {
//                    // Image(systemName: "voiceover")
//                }
//                .foregroundColor(Color.white)
//                .frame(width: 300, height: 23)
//                .padding(18)
//                .background(Color(hue: 0.247, saturation: 0.779, brightness: 0.701))
//                .cornerRadius(13).shadow(color: .green, radius: 4, x: 1, y: 1)
//                .font(.title2)
            }
        }
    }
}

#Preview {
    Instruction()
}
