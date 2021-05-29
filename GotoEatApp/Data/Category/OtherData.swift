//
//  OtherData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct OtherJson: Decodable {
    public var results: OtherResults
}

struct OtherResults: Decodable {
    public var shop: [OtherShop]
}

struct OtherShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: OtherBudget
    public var child: String
    public var coupon_urls: OtherCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: OtherPhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: OtherGenre
}

struct OtherGenre: Decodable {
    public var name: String
}

struct OtherBudget: Decodable {
    public var average: String
    public var name: String
}

struct OtherCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct OtherPhoto: Decodable {
    public var mobile: OtherMobile
}

struct OtherMobile: Decodable {
    public var l: String
    public var s: String
}


