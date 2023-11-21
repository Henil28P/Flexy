//
//  ExerciseListView.swift
//  Flexy
//
//  Created by Si Thu on 20/11/2023.
//

import SwiftUI

extension UIColor {
    convenience init(rgb: UInt32, alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }
}
// hello //

struct ExerciseListView: View {
    var body: some View {
        ZStack {
            Color.init(hue: 0.248, saturation: 0.150, brightness: 0.901).ignoresSafeArea()
            
            VStack{
                Spacer()
                Spacer()
                Spacer()
                Text("HI")
                    .font(.title)
                  VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 0) {
                        Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    Text("Search")
                        .foregroundColor(.gray)
                    
                    Spacer()
                        
                    Image(systemName: "mic.fill")
                        .foregroundColor(.gray)
                    }
                      
//                      HStack(spacing: 0) {
//                          Image(systemName: "magnifyingglass")
//                              .foregroundColor(.gray)
//                          TextField(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/"Password"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("Apple")/*@END_MENU_TOKEN@*/)
//                              .foregroundColor(.gray)
//                          Spacer()
//                          Image(systemName: "mic.fill") .foregroundColor(.gray)
//                      }
                      
                    .padding(EdgeInsets(top: 7, leading: 8, bottom: 7, trailing: 8))
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 0.46, green: 0.46, blue: 0.50).opacity(0.12))
                    .cornerRadius(10)
                  }
                  .padding(EdgeInsets(top: 1, leading: 16, bottom: 15, trailing: 16))
                
                .background()
                
                
                 //first card
                NavigationLink(destination: Instruction()) {
                    VStack(alignment: .leading, spacing: 0) {
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
                            .padding(8)
                            .background(Color(UIColor(rgb: 0x69BF14))
                                .cornerRadius(20))
                        }
                        .padding(.trailing)
                        .background(Color.white)
                    }
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 16)
                }//.navigationBarTitle("Stretch Library")
                
                
                VStack(alignment: .leading, spacing: 0) {
                    Image("Exercise-thumbnail")
                    
                    
                    HStack {
                        VStack (alignment: .leading) {
                            Text("Squats")
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
                        .padding(8)
                        .background(Color(UIColor(rgb: 0x69BF14))
                        .cornerRadius(20))
                    }
                    .padding(.trailing)
                    .background(Color.white)
                }
                .background(Color.white)
                .cornerRadius(8)
                .padding(.vertical, 4)
                .padding(.horizontal, 16)
                
                
                
                VStack(alignment: .leading, spacing: 0) {
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
                        .padding(8)
                        .background(Color(UIColor(rgb: 0x69BF14))
                        .cornerRadius(20))
                    }
                    .padding(.trailing)
                    .background(Color.white)
                }
                .background(Color.white)
                .cornerRadius(8)
                .padding(.vertical, 4)
                .padding(.horizontal, 16)
            }
            .frame(maxWidth: .infinity, alignment: .top)
        }
    }
}

#Preview {
    ExerciseListView()
}

