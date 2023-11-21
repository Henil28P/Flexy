//
//  ContentView.swift
//  Flexy
//
//  Created by Henil Patel on 15/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem() {
                    Image(systemName: "figure.strengthtraining.functional")
                    Text("Stretch")
                }
            Feedback()
                .tabItem() {
                    Image(systemName: "star.fill")
                    Text("Saved Stretches")
                }
            Home()
                .tabItem() {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
//        VStack {
//            Image(systemName: "house")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Flexy!")
//        }
//        
//        
//        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
//            
//        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
