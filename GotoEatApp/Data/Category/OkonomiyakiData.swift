//
//  OkonomiyakiData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct OkonomiyakiJson: Decodable {
    public var results: OkonomiyakiResults
}

struct OkonomiyakiResults: Decodable {
    public var shop: [OkonomiyakiShop]
}

struct OkonomiyakiShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: OkonomiyakiBudget
    public var child: String
    public var coupon_urls:OkonomiyakiCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: OkonomiyakiPhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: OkonomiyakiGenre
}

struct OkonomiyakiGenre: Decodable {
    public var name: String
}

struct OkonomiyakiBudget: Decodable {
    public var average: String
    public var name: String
}

struct OkonomiyakiCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct OkonomiyakiPhoto: Decodable {
    public var mobile: OkonomiyakiMobile
}

struct OkonomiyakiMobile: Decodable {
    public var l: String
    public var s: String
}


