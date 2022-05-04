//
//  Item.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 26/04/22.
//

import Foundation
import SwiftUI

struct Item: Identifiable {
    
    let id = UUID()
    let title: String
    let image: String
    let imageColor: Color
}
