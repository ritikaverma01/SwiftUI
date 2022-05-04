//
//  HomeTabbar.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 18/04/22.
//

import SwiftUI

struct HomeTabbar: View {
    
    @State private var defaultView : Int = 0
    
    var body: some View {
        TabView(selection: $defaultView) {
            FirstView()
                .tabItem {
                    Text("List")
                    Image(systemName: "list.bullet")
                }.tag(0)
            SecondView()
                .tabItem {
                    Text("Map")
                    Image(systemName: "mappin.and.ellipse")
                }.tag(1)
            ThirdView()
                .tabItem {
                    Text("Search")
                    Image(systemName: "magnifyingglass")
                }.tag(2)
            FourthView()
                .tabItem {
                    Text("Grid")
                    Image(systemName: "square.grid.4x3.fill")
                }.tag(3)
            FifthView()
                .tabItem {
                    Text("ImagePicker")
                    Image(systemName: "camera")
                }.tag(4)
            SixthView()
                .tabItem {
                    Text("Stack")
                    Image(systemName: "square.stack.3d.up.fill")
                }.tag(5)
            SeventhView()
                .tabItem {
                    Text("@State and @ObservedObject")
                    Image(systemName: "swift")
                }.tag(6)
            EighthView()
                .tabItem {
                    Text("@Binding")
                    Image(systemName: "swift")
                }.tag(7)
        }.accentColor(.purple)
    }
}

struct HomeTabbar_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabbar()
    }
}
