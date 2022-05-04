//
//  FifthView.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 19/04/22.
//

import SwiftUI

struct FifthView: View {
    
    @State private var currentImage : UIImage = UIImage(named: "placeholder") ?? UIImage()
    @State private var showPhotoLibrary : Bool = false
    @State private var showShareSheet : Bool = false

    var body: some View {
        VStack {
            
            Image(uiImage: currentImage).resizable()
                .scaledToFit()
            HStack {
                Button("Select Image") {
                    showPhotoLibrary.toggle()
                }
                .sheet(isPresented: $showPhotoLibrary, content: {
                    ImagePicker(sourceType: .photoLibrary, selectedImage: $currentImage)
                })
                
                Spacer()
                
                Button("Share") {
                    showShareSheet.toggle()
                }
                .sheet(isPresented: $showShareSheet, content: {
                    ActivityView(contentsToShare: [currentImage])
                })
                
            }.padding(10)
        }
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}
