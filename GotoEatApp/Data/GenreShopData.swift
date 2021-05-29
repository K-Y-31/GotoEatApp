//
//  GenreShopData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/23.
//

import Foundation
import SwiftUI

struct GenreShopJson: Decodable {
    public var results: GenreResults
}

struct GenreResults: Decodable {
    public var shop: [GenreShop]
}

struct GenreShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: GenreBudget
    public var child: String
    public var coupon_urls: GenreCoupon_urls
    public var course: String
    public var genre: G_Genre
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: GenrePhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
}

struct GenreBudget: Decodable {
    public var average: String
    public var name: String
}

struct GenreCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct G_Genre: Decodable {
    public var name: String
}

struct GenrePhoto: Decodable {
    public var mobile: GenreMobile
}

struct GenreMobile: Decodable {
    public var l: String
    public var s: String
}

