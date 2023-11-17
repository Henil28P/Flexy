//
//  ViewA.swift
//  Flexy
//
//  Created by Henil Patel on 17/11/2023.
//

import SwiftUI

struct ViewA: View {
    var body: some View {
        ZStack {
            Color.green
            
            Text("Flexy")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
        }
    }
}

#Preview {
    ViewA()
}
