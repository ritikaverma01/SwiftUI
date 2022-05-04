//
//  FirstView.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 18/04/22.
//

import SwiftUI

struct Candy {
    let name: String
    let image: Image
    let candyID: Int
}

struct FirstView: View {
    
    @State private var candyArr = [Candy(name: "Lollipop", image: Image("Lollipop"), candyID: 0), Candy(name: "Jelly Tots", image: Image("Jelly Tots"), candyID: 1), Candy(name: "Lindt", image: Image("Lindt"), candyID: 2), Candy(name: "Macaron", image: Image("Macaron"), candyID: 3), Candy(name: "Pâte de fruits", image: Image("Pâte de fruits"), candyID: 4), Candy(name: "Polkagris", image: Image("Polkagris"), candyID: 5), Candy(name: "Chupa Chups", image: Image("Chupa Chups"), candyID: 6), Candy(name: "Dumle", image: Image("Dumle"), candyID: 7), Candy(name: "Flat Tops", image: Image("Flat Tops"), candyID: 8), Candy(name: "Garoto", image: Image("Garoto"), candyID: 9), Candy(name: "Gummi bears", image: Image("Gummi bears"), candyID: 10), Candy(name: "Hanukkah gelt", image: Image("Hanukkah gelt"), candyID: 11), Candy(name: "Hany", image: Image("Hany"), candyID: 12)]
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("CANDY")
                List {
                    ForEach(candyArr, id: \.candyID) { candy in
                        HStack {
                            Image(candy.name).resizable().frame(width: 80, height: 80, alignment: .center)
                            Text(candy.name)
                            Spacer()
                            Button(action: {
                                print("tapped on \(candy.name)")
                            }) {
                                Text("Tap").foregroundColor(.purple)
                            }
                        }
                    }.onDelete(perform: deleteCandyRecord)
                        .buttonStyle(BorderlessButtonStyle())
                }
            }
        }
        
        
    }
    
    func deleteCandyRecord(offset: IndexSet) {
        candyArr.remove(atOffsets: offset)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
