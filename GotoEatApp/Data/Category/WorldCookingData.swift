//
//  WorldCookingData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct WorldCookingJson: Decodable {
    public var results: WorldCookingResults
}

struct WorldCookingResults: Decodable {
    public var shop: [WorldCookingShop]
}

struct WorldCookingShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: WorldCookingBudget
    public var child: String
    public var coupon_urls:WorldCookingCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: WorldCookingPhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: WorldCookingGenre
}

struct WorldCookingGenre: Decodable {
    public var name: String
}

struct WorldCookingBudget: Decodable {
    public var average: String
    public var name: String
}

struct WorldCookingCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct WorldCookingPhoto: Decodable {
    public var mobile: WorldCookingMobile
}

struct WorldCookingMobile: Decodable {
    public var l: String
    public var s: String
}


