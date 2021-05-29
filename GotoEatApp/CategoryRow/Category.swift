//
//  Category.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/11.
//

import Foundation

enum Category: String, CaseIterable, Identifiable{
    case izakaya = "居酒屋"
    case kannkokuryouri = "韓国料理"
    case yakiniku = "焼肉・ホルモン"
    case sousaku = "創作料理"
    case chuuka = "中華"
    case youshoku = "洋食"
    case washoku = "和食"
    case ramen = "ラーメン"
    case bar = "バー・カクテル"
    case daininngu = "ダイニングバー・バル"
    case cafe = "カフェ・スイーツ"
    case okonomiyaki = "お好み焼き・もんじゃ"
    case itariann = "イタリアン・フレンチ"
    case asia = "アジア・エスニック料理"
    case karaoke = "カラオケ・パーティー"
    case other = "その他グルメ"
    case world = "各国料理"
    
    var id: String { rawValue }
}
