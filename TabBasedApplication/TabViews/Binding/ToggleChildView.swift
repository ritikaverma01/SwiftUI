//
//  ToggleChildView.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 26/04/22.
//

import SwiftUI

struct ToggleChildView: View {
    
    @Binding public var isOnC: Bool

    var body: some View {
        VStack {
            Toggle(isOn: $isOnC, label: {
                Text("Test")
                    .foregroundColor(.gray)
                    .font(.title2)
            }).fixedSize()
        }
    }
}

struct ToggleChildView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleChildView(isOnC: .constant(false))
    }
}
