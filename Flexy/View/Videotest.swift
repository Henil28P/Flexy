//
//  Videotest.swift
//  Flexy
//
//  Created by Henil Patel on 23/11/2023.
//

import AVKit
import AVFoundation
import UIKit
import SwiftUI

struct Videotest: View {
    @State private var player = AVPlayer()
    let videoName: String = "Final1"
    let videoType: String = "mov"
    
    var body: some View {
        VideoPlayer(player: player)
            .onAppear() {
                guard let url = Bundle.main.url(forResource: videoName, withExtension: videoType)
                else {
                    fatalError("Video file \(videoName).\(videoType) not found in the app bundle")
                }
                player = AVPlayer(url: url)
                player.play()
            }
    }
}
//
//class Videotest: UIViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        
//        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "Final", ofType: "mov")!))
//        
//        let layer = AVPlayerLayer(player: player)
//        layer.frame = view.bounds
//        view.layer.addSublayer(layer)
//        
//        player.play()
//    }
//}

#Preview {
    Videotest()
}
