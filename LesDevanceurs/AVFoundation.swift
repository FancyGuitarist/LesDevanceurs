//
//  AVFoundation.swift
//  LesDevanceurs
//
//  Created by Simon Ferland on 2023-02-02.
//

import AVFoundation


var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: "AvengersTest", ofType: "mp3") {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
            print("It Works")
        } catch {
            print("ERROR")
        }
    }
}
