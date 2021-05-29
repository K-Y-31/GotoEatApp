//
//  ShopPage.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/26.
//

import SwiftUI

struct ShopPageJson: Decodable {
    public var results: ShopPageResults
}

struct ShopPageResults: Decodable {
    public var shop: [ShopPageShop]
}

struct ShopPageShop:Decodable, Identifiable{
    
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: ShopPageBudget
    public var child: String
    public var coupon_urls: ShopPageCoupon_urls
    public var course: String
    public var genre: ShopPageGenre
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: ShopPagePhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
}

struct ShopPageBudget: Decodable {
    public var average: String
    public var name: String
}

struct ShopPageCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct ShopPageGenre: Decodable {
    public var name: String
}

struct ShopPagePhoto: Decodable {
    public var mobile: ShopPageMobile
}

struct ShopPageMobile: Decodable {
    public var l: String
    public var s: String
}
