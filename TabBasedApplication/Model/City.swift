//
//  City.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 18/04/22.
//

import Foundation

struct City : Decodable
{
    let cityId: Int
    let name: String
    let landmarks: [Landmark]
}

struct Landmark : Decodable
{
    let landmarkId : Int
    let name, photo, description: String
}
