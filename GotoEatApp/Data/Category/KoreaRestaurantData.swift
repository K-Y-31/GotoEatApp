//
//  KoreaRestaurantData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct KoreaJson: Decodable {
    public var results: KoreaResults
}

struct KoreaResults: Decodable {
    public var shop: [KoreaShop]
}

struct KoreaShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: KoreaBudget
    public var child: String
    public var coupon_urls: KoreaCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: KoreaPhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: KoreaGenre
}

struct KoreaGenre: Decodable {
    public var name: String
}

struct KoreaBudget: Decodable {
    public var average: String
    public var name: String
}

struct KoreaCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct KoreaPhoto: Decodable {
    public var mobile: KoreaMobile
}

struct KoreaMobile: Decodable {
    public var l: String
    public var s: String
}


