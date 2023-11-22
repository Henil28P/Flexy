//
//  Loading.swift
//  Flexy
//
//  Created by Estelle Catelan on 22/11/2023.
//

import SwiftUI

struct Loading: View {
    var body: some View {
        ZStack {
                    Color.green
                        .ignoresSafeArea()
                    Text("Flexy")
                .font(.system(size:75))
                        .foregroundColor(.white)
                        .bold()
                }
    }
}

#Preview {
    Loading()
}
