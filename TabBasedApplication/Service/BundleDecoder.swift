//
//  BundleDecoder.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 18/04/22.
//

import Foundation

struct BundleDecoder
{
    static func decodeLandmarkBundleJson() -> [City] {
        let landmarkJson = Bundle.main.path(forResource: "landmarks", ofType: "json")
        let landmark = try! Data(contentsOf: URL(fileURLWithPath: landmarkJson!), options: .alwaysMapped)
        return try! JSONDecoder().decode([City].self, from: landmark)
    }
}
