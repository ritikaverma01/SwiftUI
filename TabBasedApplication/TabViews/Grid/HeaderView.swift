//
//  HeaderView.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 26/04/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            Image("profileDefault")
                .resizable()
                .frame(width: 210, height: 180)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .onTapGesture {
                    print("tapped")
                }
            Text("Profile Name")
                .foregroundColor(.white)
                .font(.system(size: 30, weight: .medium, design: .rounded))
            Text("Profile Bio - tell about yourself")
                .foregroundColor(.white)
                .font(.system(size: 18, weight: .light, design: .rounded))
                .multilineTextAlignment(.center)
        }
        .frame(height: 350)
        .frame(maxWidth: .infinity)
        .background(Color.purple)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
