//
//  ExerciseListView.swift
//  Flexy
//
//  Created by Si Thu on 20/11/2023.
//

import SwiftUI

struct ExerciseListView: View {
    var body: some View {
        ZStack {
            Color.init(hue: 0.248, saturation: 0.150, brightness: 0.901).edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Image("Exercise-thumbnail")
            

                    HStack {
                        VStack (alignment: .leading) {
                            Text("Speedy Leg Extension")
                                .font(.headline)
                                HStack {
                                    Text("Standing")
                                    Text("|")
                                    Text("Low Impact")
                                }
                                .foregroundColor(.gray)
                        }
                        .padding(10.0)
                        .cornerRadius(8)

                        
                        Spacer()
                            
                        HStack {
                            Image(systemName: "gauge.with.needle")
                            Text ("3 Mins")
                        }
                        .padding(4)
    //                    .border(Color.black)
    //                    .background(Color.clear)
    //                    .cornerRadius(20)
                    }
                    .background(Color.white)

                }
                .background(Color.white)
                .cornerRadius(8)
                .padding(.vertical, 4)
                .padding(.horizontal, 16)
                
                VStack {
                    Image("Exercise-thumbnail")
            

                    HStack {
                        VStack (alignment: .leading) {
                            Text("Speedy Leg Extension")
                                .font(.headline)
                                HStack {
                                    Text("Standing")
                                    Text("|")
                                    Text("Low Impact")
                                }
                                .foregroundColor(.gray)
                        }
                        .padding(10.0)
                        .cornerRadius(8)

                        
                        Spacer()
                            
                        HStack {
                            Image(systemName: "gauge.with.needle")
                            Text ("3 Mins")
                        }
                        .padding(4)
    //                    .border(Color.black)
    //                    .background(Color.clear)
    //                    .cornerRadius(20)
                    }
                    .background(Color.white)

                }
                .background(Color.white)
                .cornerRadius(8)
                .padding(.vertical, 4)
                .padding(.horizontal, 16)
            }
        }
    }
}


#Preview {
    ExerciseListView()
}
