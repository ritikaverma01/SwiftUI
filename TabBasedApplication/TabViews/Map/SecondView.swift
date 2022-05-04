//
//  SecondView.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 18/04/22.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        
        NavigationView {
            List(landmarks){ landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarksTableViewCell(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
