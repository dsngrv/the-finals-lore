//
//  AudioManager.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 10.04.2024.
//

import Foundation
import AVFoundation

class AudioManager {
    static let shared = AudioManager()

    var audioPlayer: AVAudioPlayer!

    init() {
        let sound = Bundle.main.path(forResource: "the_finals_music", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            audioPlayer.numberOfLoops = -1
            audioPlayer.play()
        } catch {
            print("Ошибка при воспроизведении музыки")
        }
    }

    func setVolume(_ volume: Float) {
        audioPlayer.volume = volume
        print("voloume = \(volume)")
    }
    
}
