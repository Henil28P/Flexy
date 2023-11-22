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
        ScrollView {
            ZStack {
                //Color.init(hue: 0.248, saturation: 0.150, brightness: 0.901)//.ignoresSafeArea()
                
                VStack{
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("Stretch Library")
                        .font(.title3)
                    VStack(alignment: .leading) {
                        HStack(spacing: 0) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                            
                            Text("Search")
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Image(systemName: "mic.fill")
                                .foregroundColor(.gray)
                        }
                        .padding(EdgeInsets(top: 7, leading: 8, bottom: 7, trailing: 8))
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.46, green: 0.46, blue: 0.50).opacity(0.12))
                        .cornerRadius(10)
                    }
                    .padding(EdgeInsets(top: 1, leading: 16, bottom: 15, trailing: 16))
                    
                    
                    //first card
                    NavigationLink(destination: Instruction()) {
                        VStack(alignment: .leading, spacing: 0) {
                            Image("LowLunges")
                            
                            HStack {
                                VStack (alignment: .leading) {
                                    Text("Low Lunges")
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
                                        .foregroundColor(.white)
                                        .bold()
                                    Text ("3 Mins")
                                        .foregroundColor(.white)
                                        .bold()
                                }
                                .padding(8)
                                .background(Color(UIColor(.green))
                                .cornerRadius(20))
                            }
                            .padding(.trailing)
                            .background(Color.white)
                        }
                        .background(Color.white)
                        .cornerRadius(8)
                        .padding(.vertical, 1)
                        .padding(.horizontal, 16)
                        .foregroundColor(Color.black)

                    }
                    
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Image("Neck&ShoulderRelease")
                        
                        
                        HStack {
                            VStack (alignment: .leading) {
                                Text("Neck & Shoulder Release")
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
                                    .bold()
                                    .foregroundColor(.white)
                                Text ("3 Mins")
                                    .bold()
                                    .foregroundColor(.white)
                            }
                            .padding(8)
                            .background(Color(.green)
                            .cornerRadius(20))
                        }
                        .padding(.trailing)
                        .background(Color.white)
                    }
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.vertical, 1)
                    .padding(.horizontal, 16)

                    
                    VStack(alignment: .leading, spacing: 0) {
                        Image("BackBend")
                        
                        
                        HStack {
                            VStack (alignment: .leading) {
                                Text("Back Bend")
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
                                    .bold()
                                    .foregroundColor(.white)
                                Text ("3 Mins")
                                    .bold()
                                    .foregroundColor(.white)
                            }
                            .padding(8)
                            .background(Color(UIColor(.green))
                            .cornerRadius(20))
                
                        }
                        .padding(.trailing)
                        .background(Color.white)
                    }
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.vertical, 1)
                    .padding(.horizontal, 16)
                }
                .frame(maxWidth: .infinity, alignment: .top)
            }
//            .frame(height: 50)
        }
    }
}

#Preview {
    ExerciseListView()
}

