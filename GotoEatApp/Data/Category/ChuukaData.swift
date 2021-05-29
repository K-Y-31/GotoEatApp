//
//  ChuukaData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct ChuukaJson: Decodable {
    public var results: ChuukaResults
}

struct ChuukaResults: Decodable {
    public var shop: [ChuukaShop]
}

struct ChuukaShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: ChuukaBudget
    public var child: String
    public var coupon_urls: ChuukaCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: ChuukaPhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: ChuukaGenre
}

struct ChuukaGenre: Decodable {
    public var name: String
}

struct ChuukaBudget: Decodable {
    public var average: String
    public var name: String
}

struct ChuukaCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct ChuukaPhoto: Decodable {
    public var mobile: ChuukaMobile
}

struct ChuukaMobile: Decodable {
    public var l: String
    public var s: String
}


