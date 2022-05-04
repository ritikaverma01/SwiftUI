//
//  imageView.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 18/04/22.
//

import SwiftUI

struct imageView: View {
    
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white))
            .shadow(radius: 7)
    }
}

struct imageView_Previews: PreviewProvider {
    static var previews: some View {
        imageView(image: Image("nature"))
    }
}
