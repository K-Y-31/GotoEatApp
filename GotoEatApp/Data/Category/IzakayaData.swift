//
//  IzakayaData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/24.
//

import Foundation
import SwiftUI

struct IzakayaJson: Decodable {
    public var results: IzakayaResults
}

struct IzakayaResults: Decodable {
    public var shop: [IzakayaShop]
}

struct IzakayaShop: Decodable, Identifiable {
    public var id: String
    public var access: String
    public var address: String
    public var barrier_free: String
    public var budget: IzakayaBudget
    public var child: String
    public var coupon_urls:IzakayaCoupon_urls
    public var course: String
    public var lat: Double
    public var lng: Double
    public var logo_image: String
    public var photo: IzakayaPhoto
    public var name: String
    public var `catch`: String
    public var budget_memo: String
    public var genre: IzakayaGenre
}

struct IzakayaGenre: Decodable {
    public var name: String
}

struct IzakayaBudget: Decodable {
    public var average: String
    public var name: String
}

struct IzakayaCoupon_urls: Decodable {
    public var pc: String
    public var sp: String
}

struct IzakayaPhoto: Decodable {
    public var mobile: IzakayaMobile
}

struct IzakayaMobile: Decodable {
    public var l: String
    public var s: String
}


