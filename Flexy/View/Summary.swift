//
//  summary.swift
//  Flexy
//
//  Created by Ridhi Kathuria on 21/11/2023.
//
import SwiftUI

/*#-code-walkthrough(HomeView.struct)*/

struct HomeView: View {
    var body: some View {
        
        
        VStack {
            Text("You did it, Ellie! ")
            
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .foregroundColor(.black)
            
            Image("Video")
            
                .resizable()
                .scaledToFit()
            
            
            Text("You've conquered another daily stretch to add to your streak.")
            
                .padding(10)
                .foregroundColor(.black)
                .multilineTextAlignment(.center) // Use .leading, .center, or .trailing
            HStack{
                NavigationLink(destination: ViewB()) {
                    ZStack {
                        Circle()
                            .inset(by: 40)
                            .foregroundColor(.white)
                        Image(systemName: "square.and.arrow.up")
                            .font(.title2)
                            .foregroundColor(Color.black)
                    }
                }
                
                ZStack {
                    NavigationLink(destination: ViewB()) {
                        ZStack {
                            Circle()
                                .inset(by: 40)
                                .foregroundColor(.white)
                            
                            Image(systemName: "star")
                                .font(.title2)
                                .foregroundColor(Color.black)
                        }
                    }
                }
                
            }
            VStack {
                HStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                }
            }
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .cornerRadius(20)
                
                HStack {
                    Circle()
                        .foregroundColor(Color.init(hue: 0.248, saturation: 0.150, brightness: 0.901))
                    Circle()
                        .foregroundColor(Color.init(hue: 0.248, saturation: 0.150, brightness: 0.901))
                    Circle()
                        .foregroundColor(Color.init(hue: 0.248, saturation: 0.150, brightness: 0.901))
                    
                    
                }
            }
            ZStack {
                Button("Back to Home") {
                    // Image(systemName: "voiceover")
                }
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
        
        .background(Color.init(hue: 0.248, saturation: 0.150, brightness: 0.901))
        
    }
    
}
    
    
  
    
    
    #Preview {
        HomeView()
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


