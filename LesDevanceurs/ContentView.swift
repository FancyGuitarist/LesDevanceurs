//
//  ContentView.swift
//  ReserveLibrary
//
//  Created by Simon Ferland on 2023-01-30.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Image("Devanceurs")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Bibliothèque")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Link(destination: URL(string: "https://bibl-ulaval.libcal.com/space/12227")!) {
                    Text("Réservation")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 250, height: 50)
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color.white).shadow(radius: 3))}
                    Link(destination: URL(string: "https://bibl-ulaval.libcal.com/r/checkin/kXP42iOk")!) {Text("Confirmation")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .fixedSize(horizontal: false, vertical: true)
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 250, height: 50)
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color.white).shadow(radius: 3))
                    }
                    Spacer()
                Text("Overleaf")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                
                Link(destination: URL(string: "https://www.overleaf.com/6934683944nsncrscprdbj")!) {
                    Text("Matériaux")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 250, height: 50)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.white).shadow(radius: 3))}
                    Link(destination: URL(string: "https://fr.overleaf.com/1223156833dvrqgcxzhcxp")!) {
                        Text("Quantique")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .fixedSize(horizontal: false, vertical: true)
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(width: 250, height: 50)
                                .background(RoundedRectangle(cornerRadius: 20).fill(Color.white).shadow(radius: 3))
                    }
                    Spacer()
                    
                }
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

