//
//  CollectionViewCell.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 18/04/22.
//

import SwiftUI

struct CollectionViewCell: View {

    let item: Item
    
    var body: some View {
        GeometryReader { reader in
            
            let fontSize = min(reader.size.width * 0.2, 28)
            let imageWidth: CGFloat = min(50, reader.size.width * 0.6)
            
            VStack(spacing: 5) {
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(item.imageColor)
                    .frame(width: imageWidth)
                Text(item.title)
                    .font(.system(size: fontSize, weight: .bold, design: .rounded))
                    .foregroundColor(Color.black.opacity(0.9))
            }
            .frame(width: reader.size.width, height: reader.size.height)
            .background(Color.white)
        }
        .frame(height: 150)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: Color.black.opacity(0.2), radius: 10, y: 5)
    }

}

struct CollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionViewCell(item: Item(title: "Home", image: "Home", imageColor: .red))
    }
}
