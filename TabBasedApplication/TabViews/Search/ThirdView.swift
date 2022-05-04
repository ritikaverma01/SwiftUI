//
//  ThirdView.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 18/04/22.
//

import SwiftUI

struct ThirdView: View {
    
    @State private var cities = BundleDecoder.decodeLandmarkBundleJson()
    @State private var searchBarText: String = String()

    var body: some View {
            NavigationView
            {
                VStack {
                    SearchBarView(searchBarText: $searchBarText)
                    List
                    {
                        ForEach(cities, id: \.cityId){ city in
                            Section(header: Text(city.name))
                            {
                                ForEach(city.landmarks.filter({searchBarText.isEmpty ? true : $0.name.contains(searchBarText)}),id: \.landmarkId)
                                {
                                    landmark in
                                    NavigationLink(destination: LandmarkDetailView(landmark: landmark))
                                    {
                                        LandmarkRow(landmark: landmark)
                                    }
                                    
                                }
                            }
                        }
                    }.navigationBarTitle("Monuments")
                        .navigationBarTitleDisplayMode(.inline)
                }
            }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
