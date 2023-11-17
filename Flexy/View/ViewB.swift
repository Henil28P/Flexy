//
//  ViewB.swift
//  Flexy
//
//  Created by Henil Patel on 17/11/2023.
//

import SwiftUI

struct ViewB: View {
    var body: some View {
        ZStack {
            Color.init(hue: 0.247, saturation: 0.150, brightness: 0.901)
            
            VStack {
                HStack {
                    Button("Audio") {
                        //                Image(systemName: "voiceover")
                        Image(systemName: "voiceover")
                    }
                    //                    .buttonStyle(.bordered)
                    //            .tint(.green)
                    
                    .foregroundColor(Color(hue: 0.247, saturation: 0.779, brightness: 0.701))
                    .frame(width: 100, height: 22)
                    .padding(18)
                    .background(Color.white)
                    .cornerRadius(8).shadow(color: .green, radius: 4, x: 1, y: 1)
                    
                    Text(" ")
                    
                    Button("Subtitle") {
                        //                Image(systemName: "voiceover")
                    }
                    .foregroundColor(Color(hue: 0.247, saturation: 0.779, brightness: 0.701))
                    .frame(width: 100, height: 25)
                    .padding(18)
                    .background(Color.white)
                    .cornerRadius(8).shadow(color: .green, radius: 4, x: 1, y: 1)
                }
                
                Text(" ")
                
                Button("Stop Exercise") {
                    // Image(systemName: "voiceover")
                }
                .foregroundColor(.white)
                .background(Color(hue: 0.247, saturation: 0.779, brightness: 0.701))
                .frame(width: 300, height: 45)
                .padding(5)
                .cornerRadius(8).shadow(color: .green, radius: 4, x: 1, y: 1)
            }
        }
    }
}

#Preview {
    ViewB()
}
