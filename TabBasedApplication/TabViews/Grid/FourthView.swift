//
//  FourthView.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 18/04/22.
//

import SwiftUI

struct Teams {
    let name: String
    let logo: String
}

struct FourthView: View {
    
    let spacing: CGFloat = 10
    @State private var numberOfCol = 3
    let items = [Item(title: "Home", image: "Home", imageColor: .black), Item(title: "Money", image: "Money", imageColor: .black), Item(title: "Bank", image: "Bank", imageColor: .black), Item(title: "Vacation", image: "Vacation", imageColor: .black), Item(title: "User", image: "User", imageColor: .black), Item(title: "Charts", image: "Charts", imageColor: .black), Item(title: "Support", image: "Support", imageColor: .black), Item(title: "Home", image: "Home", imageColor: .black), Item(title: "Money", image: "Money", imageColor: .black), Item(title: "Bank", image: "Bank", imageColor: .black), Item(title: "Vacation", image: "Vacation", imageColor: .black), Item(title: "User", image: "User", imageColor: .black), Item(title: "Charts", image: "Charts", imageColor: .black), Item(title: "Support", image: "Support", imageColor: .black), Item(title: "Home", image: "Home", imageColor: .black), Item(title: "Money", image: "Money", imageColor: .black), Item(title: "Bank", image: "Bank", imageColor: .black), Item(title: "Vacation", image: "Vacation", imageColor: .black), Item(title: "User", image: "User", imageColor: .black), Item(title: "Charts", image: "Charts", imageColor: .black), Item(title: "Support", image: "Support", imageColor: .black)]
    
    var body: some View {
        
        let columns = Array(
            repeating: GridItem(.flexible(), spacing: spacing),
            count: numberOfCol)
        
        ScrollView {
            HeaderView()
            //Section
            LazyVGrid(columns: columns, spacing: spacing) {
                ForEach(items) { item in
                    Button(action: {}) {
                        CollectionViewCell(item: item)
                    }
                }
            }
            .padding(.horizontal)
            .offset(y: -30)
        }
        .background(Color.white)
        .ignoresSafeArea()
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
