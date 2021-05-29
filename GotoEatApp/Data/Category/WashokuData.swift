//
//  WashokuData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct WashokuJson: Decodable {
    public var results: WashokuResults
}

struct WashokuResults: Decodable {
    public var shop: [WashokuShop]
}

struct WashokuShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: WashokuBudget
    public var child: String
    public var coupon_urls:WashokuCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: WashokuPhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: WashokuGenre
}

struct WashokuGenre: Decodable {
    public var name: String
}

struct WashokuBudget: Decodable {
    public var average: String
    public var name: String
}

struct WashokuCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct WashokuPhoto: Decodable {
    public var mobile: WashokuMobile
}

struct WashokuMobile: Decodable {
    public var l: String
    public var s: String
}


