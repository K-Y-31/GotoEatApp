//
//  CaraokeData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct CaraokeJson: Decodable {
    public var results: CaraokeResults
}

struct CaraokeResults: Decodable {
    public var shop: [CaraokeShop]
}

struct CaraokeShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: CaraokeBudget
    public var child: String
    public var coupon_urls:CaraokeCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: CaraokePhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: CaraokeGenre
}

struct CaraokeGenre: Decodable {
    public var name: String
}

struct CaraokeBudget: Decodable {
    public var average: String
    public var name: String
}

struct CaraokeCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct CaraokePhoto: Decodable {
    public var mobile: CaraokeMobile
}

struct CaraokeMobile: Decodable {
    public var l: String
    public var s: String
}


