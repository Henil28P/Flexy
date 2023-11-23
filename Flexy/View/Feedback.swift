//
//  ViewB.swift
//  Flexy
//
//  Created by Henil Patel on 17/11/2023.
//
// first commit estelle

import SwiftUI
import AVKit

struct Feedback: View {
    @State private var player = AVPlayer()
    let videoName: String = "Final1"
    let videoType: String = "mov"
    
    //let url = URL(string: "Final1.mov")
    
    var body: some View {
        
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
        
//        VStack {
//            VideoPlayer(player: AVPlayer(url: url!))
//        }
        
        ZStack {
            // VideoPlayer(player: AVPlayer(url: url!))
            
            Color.init(hue: 0.0, saturation: 0.0, brightness: 1)
            
            VStack {
                VideoPlayer(player: player)
                    .onAppear() {
                        guard let url = Bundle.main.url(forResource: videoName, withExtension: videoType)
                        else {
                            fatalError("Video file \(videoName).\(videoType) not found in the app bundle")
                        }
                        player = AVPlayer(url: url)
                        player.play()
                    }
                //VideoPlayer(player: AVPlayer(url: url!))
                
                HStack {
                    Button("Audio") {
                        // Image(systemName: "voiceover")
                        // Image(systemName: "voiceover")
                    }
                    // .buttonStyle(.bordered)
                    // .tint(.green)
                    
                    .foregroundColor(Color(hue: 0.247, saturation: 0.779, brightness: 0.701))
                    .frame(width: 120, height: 22)
                    .padding(18)
                    .background(Color.white)
                    .cornerRadius(13).shadow(color: .green, radius: 4, x: 1, y: 1)
                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                    
                    Text(" ")
                    
                    Button("Subtitle") {
                        // Image(systemName: "voiceover")
                    }
                    .foregroundColor(Color(hue: 0.247, saturation: 0.779, brightness: 0.701))
                    .frame(width: 120, height: 25)
                    .padding(18)
                    .background(Color.white)
                    .cornerRadius(13).shadow(color: .green, radius: 4, x: 1, y: 1)
                }
                
                Text("")
                
                NavigationLink(destination: Summary()) {
                    Text("Stop Exercise")
                }
                .foregroundColor(Color.white)
                .frame(width: 300, height: 23)
                .padding(18)
                .background(Color(hue: 0.247, saturation: 0.779, brightness: 0.701))
                .cornerRadius(13).shadow(color: .green, radius: 4, x: 1, y: 1)
                .font(.title2)
                
//                .font(.title2)
//                .foregroundColor(.white)
//                .background(Color.green)
//                .frame(width: 200, height: 45)
//                .padding(5)
//                .cornerRadius(20).shadow(color: .green, radius: 4, x: 1, y: 1)
            }
        }
    }
}

#Preview {
    Feedback()
}
