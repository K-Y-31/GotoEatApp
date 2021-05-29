//
//  Shop.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/08.
//

import SwiftUI
import CoreLocation

struct ShopJson: Decodable{
    public var results: Results
}

struct Results: Decodable {
    public var shop: [Shop]
}

struct Shop: Decodable, Identifiable{
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: Budget
    public var child: String
    public var coupon_urls: Coupon_urls
    public var course: String
    public var genre: Genre
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: Photo
    public var name: String
    public var `catch`: String
    public var budget_memo: String
}

struct Budget: Decodable {
    public var average: String
    public var name: String
}

struct Coupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct Genre: Decodable {
    public var name: String
}

struct Coordinates: Decodable {
    public var lat: Double
    public var lng: Double
}

struct Photo: Decodable {
    public var mobile: Mobile
}

struct Mobile: Decodable {
    public var l: String
    public var s: String
}

