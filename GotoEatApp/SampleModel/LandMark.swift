//
//  LandMark.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/19.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Decodable, Identifiable {
    var id: Int
    var isFavorite: Bool
    var isFeatured: Bool
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }
}
