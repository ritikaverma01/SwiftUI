//
//  LandmarkDetail.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 18/04/22.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmarks
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: landmark.locationCoordinates).frame(height:300)
                imageView(image: landmark.image).offset(y: -180).padding(.bottom, -180)
                VStack(alignment: .leading) {
                    Text(landmark.name).font(.title)
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }.font(.subheadline).foregroundColor(.secondary)
                    Divider()
                    Text("About: \(landmark.name)").font(.title2)
                    Text(landmark.description)
                }.padding()
            }.navigationTitle(landmark.name).navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
