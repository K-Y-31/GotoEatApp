//
//  SousakuData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct SousakuJson: Decodable {
    public var results: SousakuResults
}

struct SousakuResults: Decodable {
    public var shop: [SousakuShop]
}

struct SousakuShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: SousakuBudget
    public var child: String
    public var coupon_urls:SousakuCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: SousakuPhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: SousakuGenre
}

struct SousakuGenre: Decodable {
    public var name: String
}

struct SousakuBudget: Decodable {
    public var average: String
    public var name: String
}

struct SousakuCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct SousakuPhoto: Decodable {
    public var mobile: SousakuMobile
}

struct SousakuMobile: Decodable {
    public var l: String
    public var s: String
}


