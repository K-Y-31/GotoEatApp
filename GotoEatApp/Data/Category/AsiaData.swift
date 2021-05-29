//
//  AsiaData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct AsiaJson: Decodable {
    public var results: AsiaResults
}

struct AsiaResults: Decodable {
    public var shop: [AsiaShop]
}

struct AsiaShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: AsiaBudget
    public var child: String
    public var coupon_urls:AsiaCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: AsiaPhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: AsiaGenre
}

struct AsiaGenre: Decodable {
    public var name: String
}

struct AsiaBudget: Decodable {
    public var average: String
    public var name: String
}

struct AsiaCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct AsiaPhoto: Decodable {
    public var mobile: AsiaMobile
}

struct AsiaMobile: Decodable {
    public var l: String
    public var s: String
}


