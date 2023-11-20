//
//  ViewC.swift
//  Flexy
//
//  Created by Henil Patel on 17/11/2023.
//

import SwiftUI

struct ViewC: View {
    var body: some View {
        ZStack {
            Color.init(red: 232 / 255, green: 244 / 255, blue: 220 / 255)
                .ignoresSafeArea()
            
            VStack {
                Text("Let's Stretch")
                    .font(.title)
                Text("please select a body part to get started")
                Image("HomeScreenMonkey")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                Spacer()
                                
                                Button(action: {
                                    // Action to be performed when the button is tapped
                                    // You can navigate to another view or perform some other action here
                                    print("Button tapped!")
                                }) {
                                    Text("Explore all exercises")
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color.green)
                                        .cornerRadius(20)
                                }
                
            }
            
        }
       
        
    }
}
#Preview {
    ViewC()
}
