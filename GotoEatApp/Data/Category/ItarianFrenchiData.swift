//
//  ItarianFrenchiData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct ItarianJson: Decodable {
    public var results: ItarianResults
}

struct ItarianResults: Decodable {
    public var shop: [ItarianShop]
}

struct ItarianShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: ItarianBudget
    public var child: String
    public var coupon_urls:ItarianCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: ItarianPhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: ItarianGenre
}

struct ItarianGenre: Decodable {
    public var name: String
}

struct ItarianBudget: Decodable {
    public var average: String
    public var name: String
}

struct ItarianCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct ItarianPhoto: Decodable {
    public var mobile: ItarianMobile
}

struct ItarianMobile: Decodable {
    public var l: String
    public var s: String
}


