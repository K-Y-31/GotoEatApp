//
//  SaveShopData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/20.
//

import Foundation
import SwiftUI

class SaveShopData: ObservableObject {
    @Published var data: [ShopData] = []
}

var savedata = SaveShopData()
