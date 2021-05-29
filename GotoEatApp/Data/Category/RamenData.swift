//
//  RamenData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct RamenJson: Decodable {
    public var results: RamenResults
}

struct RamenResults: Decodable {
    public var shop: [RamenShop]
}

struct RamenShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: RamenBudget
    public var child: String
    public var coupon_urls:RamenCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: RamenPhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: RamenGenre
}

struct RamenGenre: Decodable {
    public var name: String
}

struct RamenBudget: Decodable {
    public var average: String
    public var name: String
}

struct RamenCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct RamenPhoto: Decodable {
    public var mobile: RamenMobile
}

struct RamenMobile: Decodable {
    public var l: String
    public var s: String
}


