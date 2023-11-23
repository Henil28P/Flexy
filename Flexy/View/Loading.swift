//
//  Loading.swift
//  Flexy
//
//  Created by Estelle Catelan on 22/11/2023.
//

import SwiftUI

struct Loading: View {
    @State private var isActive = false
    @State private var size = 1.0
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            Home()
        } else {
            ZStack {
                ZStack {
                    Color.green
                        .ignoresSafeArea()
                    Text("Flexy")
                        .font(.system(size:75))
                        .foregroundColor(.white)
                        .bold()
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeOut(duration: 1.2)) {
                        self.size = 1.0
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    self.isActive = true
                } // 2.0 seconds
            }
        }
    }
}

#Preview {
    Loading()
}
