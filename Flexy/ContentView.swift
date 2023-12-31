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
            NavigationView {
                Loading()
            }
                .tabItem() {
                    Image(systemName: "figure.strengthtraining.functional")
                    Text("Stretch")
                }
            
            NavigationView {
                SavedStretches()
            }
                .tabItem() {
                    Image(systemName: "star.fill")
                    Text("Saved Stretches")
                }
            
            NavigationView{
                Summary()
            }
                .tabItem() {
                    Image(systemName: "gearshape")
                    Text("Summary")
                }
        }
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
    


#Preview {
    ContentView()
}
