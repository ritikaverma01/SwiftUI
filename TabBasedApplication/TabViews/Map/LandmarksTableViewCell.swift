//
//  LandmarksTableViewCell.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 18/04/22.
//

import SwiftUI

struct LandmarksTableViewCell: View {
    var landmark: Landmarks
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarksTableViewCell_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksTableViewCell(landmark: landmarks[0]).previewLayout(.fixed(width: 300, height: 70))
    }
}
