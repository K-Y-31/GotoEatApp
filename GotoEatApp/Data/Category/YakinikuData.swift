//
//  YakinikuData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct YakinikuJson: Decodable {
    public var results: YakinikuResults
}

struct YakinikuResults: Decodable {
    public var shop: [YakinikuShop]
}

struct YakinikuShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: YakinikuBudget
    public var child: String
    public var coupon_urls: YakinikuCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: YakinikuPhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: YakinikuGenre
}

struct YakinikuGenre: Decodable {
    public var name: String
}

struct YakinikuBudget: Decodable {
    public var average: String
    public var name: String
}

struct YakinikuCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct YakinikuPhoto: Decodable {
    public var mobile: YakinikuMobile
}

struct YakinikuMobile: Decodable {
    public var l: String
    public var s: String
}


