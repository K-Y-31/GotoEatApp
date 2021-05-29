//
//  BarData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct BarJson: Decodable {
    public var results: BarResults
}

struct BarResults: Decodable {
    public var shop: [BarShop]
}

struct BarShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: BarBudget
    public var child: String
    public var coupon_urls:BarCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: BarPhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: BarGenre
}

struct BarGenre: Decodable {
    public var name: String
}

struct BarBudget: Decodable {
    public var average: String
    public var name: String
}

struct BarCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct BarPhoto: Decodable {
    public var mobile: BarMobile
}

struct BarMobile: Decodable {
    public var l: String
    public var s: String
}


