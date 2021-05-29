//
//  DiningData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct DiningJson: Decodable {
    public var results: DiningResults
}

struct DiningResults: Decodable {
    public var shop: [DiningShop]
}

struct DiningShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: DiningBudget
    public var child: String
    public var coupon_urls:DiningCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: DiningPhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: DiningGenre
}

struct DiningGenre: Decodable {
    public var name: String
}

struct DiningBudget: Decodable {
    public var average: String
    public var name: String
}

struct DiningCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct DiningPhoto: Decodable {
    public var mobile: DiningMobile
}

struct DiningMobile: Decodable {
    public var l: String
    public var s: String
}


