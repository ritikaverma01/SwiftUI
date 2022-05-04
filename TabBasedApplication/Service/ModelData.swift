//
//  ModelData.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 18/04/22.
//

import SwiftUI
var landmarks: [Landmarks] = load("landmarkData.json")

func load<T:Decodable>(_ filename: String) -> T{
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Couldn't load \(filename) in bundle")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't load \(filename) in main bundle")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't load \(filename) in main bundle")
    }
}
