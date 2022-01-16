//
//  SpeechService.swift
//  ImageClassification
//
//  Created by Hasan Elhussein on 16.01.2022.
//  Copyright © 2022 Y Media Labs. All rights reserved.
//

import Foundation
import AVKit

class SpeechService: NSObject {
    
    // Shared instance
    static let sharedInstance = SpeechService()
    
    let speechSynthesizer = AVKit.AVSpeechSynthesizer()
    
    // MARK: - Speech method
    
    func startSpeech(_ text: String) {
        let utterence = AVSpeechUtterance(string: text)
        // let language = NSLinguisticTagger.dominantLanguage(for: String)
        utterence.voice = AVSpeechSynthesisVoice(language: "tr")
        speechSynthesizer.speak(utterence)
    }
    
    func stopSpeech() {
        speechSynthesizer.stopSpeaking(at: .immediate)
    }
    
}
