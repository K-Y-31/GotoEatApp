//
//  SearchResultShop.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/19.
//

import Foundation
import SwiftUI

struct SearchShopJson: Decodable {
    public var results: SearchResults
}

struct SearchResults: Decodable {
    public var shop: [SearchShop]
}

struct SearchShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: SearchBudget
    public var child: String
    public var coupon_urls: SearchCoupon_urls
    public var course: String
    public var genre: SearchGenre
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: SearchPhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
}

struct SearchBudget: Decodable {
    public var average: String
    public var name: String
}

struct SearchCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct SearchGenre: Decodable {
    public var name: String
}

struct SearchPhoto: Decodable {
    public var mobile: SearchMobile
}

struct SearchMobile: Decodable {
    public var l: String
    public var s: String
}
