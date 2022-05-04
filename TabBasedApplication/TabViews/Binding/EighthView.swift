//
//  EighthView.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 26/04/22.
//

import SwiftUI

struct EighthView: View {
    
    @State private var isOnP: Bool = false
    
    var body: some View {
        VStack {
            Text("Binding Demo").font(.title).foregroundColor(isOnP ? .purple : .gray)
            ToggleChildView(isOnC: $isOnP)
        }.padding()
    }
}

struct EighthView_Previews: PreviewProvider {
    static var previews: some View {
        EighthView()
    }
}
