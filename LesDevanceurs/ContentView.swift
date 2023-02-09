//
//  ContentView.swift
//  ReserveLibrary
//
//  Created by Simon Ferland on 2023-01-30.
//

import SwiftUI
import AVFoundation




struct ContentView: View {
    @State var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        
        ZStack {
            Image("Devanceurs")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .onAppear(perform: {
                    playSounds("AvengersTest.mp3")
                })
            
            VStack{
                Spacer()
                Text("Bibliothèque")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Link(destination: URL(string: "https://bibl-ulaval.libcal.com/spaces?lid=1809")!) {
                    Text("Réservation")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 250, height: 50)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.white).shadow(radius: 3))}
                Link(destination: URL(string: "https://bibl-ulaval.libcal.com/r/checkin")!) {Text("Confirmation")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 250, height: 50)
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color.white).shadow(radius: 3))
                }
                Link(destination: URL(string: "https://docs.google.com/spreadsheets/d/1IUGNBnPWAaIIWXL4b_7G-qC45nvPlyeQry1gDlxJ1mM/edit?usp=sharing")!) {
                    Text("Les Retardés")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 250, height: 50)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.white).shadow(radius: 3))}
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
    func playSounds(_ soundFileName : String) {
            guard let soundURL = Bundle.main.url(forResource: "AvengersTest", withExtension: "mp3") else {
                fatalError("Unable to find \(soundFileName) in bundle")
            }

            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            } catch {
                print(error.localizedDescription)
            }
            audioPlayer.play()
            audioPlayer.numberOfLoops = -1
            print("This works")
        }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
    

