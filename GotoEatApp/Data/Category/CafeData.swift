//
//  CafeData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct CafeJson: Decodable {
    public var results: CafeResults
}

struct CafeResults: Decodable {
    public var shop: [CafeShop]
}

struct CafeShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: CafeBudget
    public var child: String
    public var coupon_urls: CafeCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: CafePhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: CafeGenre
}

struct CafeGenre: Decodable {
    public var name: String
}

struct CafeBudget: Decodable {
    public var average: String
    public var name: String
}

struct CafeCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct CafePhoto: Decodable {
    public var mobile: CafeMobile
}

struct CafeMobile: Decodable {
    public var l: String
    public var s: String
}


