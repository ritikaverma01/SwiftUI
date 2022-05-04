//
//  ActivityView.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 19/04/22.
//

import Foundation
import SwiftUI

struct ActivityView : UIViewControllerRepresentable  {

    var contentsToShare : [Any] = []

    func makeUIViewController(context: Context) -> UIActivityViewController {
        UIActivityViewController(activityItems: contentsToShare, applicationActivities: nil)
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        
    }

    typealias UIViewControllerType = UIActivityViewController

}
