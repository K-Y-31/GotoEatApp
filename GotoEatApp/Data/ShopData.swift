//
//  ShopData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/20.
//

import Foundation
import SwiftUI

class ShopData: Identifiable, ObservableObject {
    @Published public var id: String
    @Published public var access: String
    @Published public var address: String
    @Published public var budget_average: String
    @Published public var coupon_url_sp: String
    @Published public var genre_name: String
    @Published public var barrier_free: String
    @Published public var child: String
    @Published public var course: String
    @Published public var lat: Double
    @Published public var lng: Double
    @Published public var logo_image: String
    @Published public var photo_mobile_url_l: String
    @Published public var name: String
    @Published public var `catch`: String
    @Published public var budget_memo: String
    
    init (
        id: String = "",
        access: String = "",
        address: String = "",
        budget_average: String = "",
        coupon_url_sp: String = "",
        genre_name: String = "",
        barrier_free: String = "",
        child: String = "" ,
        course: String = "",
        lat: Double = 0.0,
        lng: Double = 0.0,
        logo_image: String = "",
        photo_mobile_url_l: String = "",
        name: String = "",
        _catch: String = "",
        budget_memo: String = ""
        )
    {
        self.id = id
        self.access = access
        self.address = address
        self.budget_average = budget_average
        self.coupon_url_sp = coupon_url_sp
        self.genre_name = genre_name
        self.barrier_free = barrier_free
        self.child = child
        self.course = course
        self.lat = lat
        self.lng = lng
        self.logo_image = logo_image
        self.photo_mobile_url_l = photo_mobile_url_l
        self.name = name
        self.catch = _catch
        self.budget_memo = budget_memo
        
    }
}

