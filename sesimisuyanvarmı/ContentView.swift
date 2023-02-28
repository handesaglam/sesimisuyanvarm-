//
//  ContentView.swift
//  sesimisuyanvarmı
//
//  Created by Hande Sağlam on 24.02.2023.
//

import SwiftUI
import AVFoundation
var player:AVAudioPlayer!
struct ContentView: View {
    var body: some View {
      
        VStack {
            Button(
                action: {
                    self.stopsound()
                })   { Text("stop")
                        .foregroundColor(Color.green)
                        .font(.system(size: 32))
        }
           
            Button(
                action: {
                    self.playsound()
                })   { Text("play")
                        .foregroundColor(Color.green)
                        .font(.system(size: 32))
        }
        }
    }
    
    func playsound(){
        
        let url=Bundle.main.url(forResource: "deprem", withExtension: "mp3")
        guard url != nil else{
            return
        }
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            player.play()
        }catch{
            
        }
    }
    func stopsound(){
        player.stop()
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
