//
//  ImagePicker.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 19/04/22.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
        
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @Binding var selectedImage: UIImage
    @Environment(\.presentationMode) private var presentationMode
    //to access system settings we use environment

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator : NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        let parent: ImagePicker
        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let userSelectedImage = info[.originalImage] as? UIImage {
                parent.selectedImage = userSelectedImage
            }
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = sourceType
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {

    }
    
    typealias UIViewControllerType = UIImagePickerController
}
