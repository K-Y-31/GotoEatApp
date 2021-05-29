//
//  YoushokuData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct YoushokuJson: Decodable {
    public var results: YoushokuResults
}

struct YoushokuResults: Decodable {
    public var shop: [YoushokuShop]
}

struct YoushokuShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: YoushokuBudget
    public var child: String
    public var coupon_urls:YoushokuCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: YoushokuPhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: YoushokuGenre
}

struct YoushokuGenre: Decodable {
    public var name: String
}

struct YoushokuBudget: Decodable {
    public var average: String
    public var name: String
}

struct YoushokuCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct YoushokuPhoto: Decodable {
    public var mobile: YoushokuMobile
}

struct YoushokuMobile: Decodable {
    public var l: String
    public var s: String
}


