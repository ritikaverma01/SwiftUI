//
//  SeventhView.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 25/04/22.
//

import SwiftUI

struct SeventhView: View {
    
    @State private var playStatus: String = "Not playing"
    @State private var isPlaying: Bool = false
    
    @ObservedObject private var userName: User = User()

    var body: some View {
        VStack {
                        
            Image(systemName: "music.note")
                .resizable()
                .frame(width: 300, height: 300, alignment: .topLeading)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .scaledToFit()
                .padding()
            
            Text(self.playStatus)
                .font(.title)
                .frame(alignment: .center)
                .padding()
            
            
            HStack(alignment: .center, spacing: 50) {
                Button(action: {
                    debugPrint("Back btn tapped")
                }) {
                    Image(systemName: "backward")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                }
                
                Button(action: {
                    self.isPlaying.toggle()
                    self.playStatus = self.isPlaying ? "Playing" : "Not playing"
                    debugPrint("Play tapped")
                }) {
                    Image(systemName: self.isPlaying ? "pause" : "play")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                }
                
                Button(action: {
                    debugPrint("Forward btn tapped")
                }) {
                    Image(systemName: "forward")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                }
            }
            
            Text("User name is \(userName.name)")
                .font(.title)
                .frame(alignment: .center)
                .padding()
                .multilineTextAlignment(.center)
            
            TextField("name", text: $userName.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
        }
    }
}

struct SeventhView_Previews: PreviewProvider {
    static var previews: some View {
        SeventhView()
    }
}
