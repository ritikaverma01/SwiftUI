//
//  LandmarkDetailView.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 18/04/22.
//

import SwiftUI

struct LandmarkDetailView: View {
    
    @State var landmark: Landmark
    var body: some View {
        VStack {
            Image(landmark.photo).resizable().frame(width: 300, height: 300, alignment: .center).clipShape(Circle()) .shadow(radius: 7)
            Text(landmark.name).font(.title).padding()
            Text(landmark.description).font(.body)
        }.padding()
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView(landmark: Landmark(landmarkId: 1, name: "Test", photo: "nature", description: "Test"))
    }
}
