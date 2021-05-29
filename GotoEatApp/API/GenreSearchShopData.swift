//
//  GenreSearchShopData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/23.
//

import Foundation
import SwiftUI
import Alamofire
import CoreLocation

enum Genres: String {
    case G001
    case G002
    case G003
    case G004
    case G005
    case G006
    case G007
    case G008
    case G017
    case G009
    case G010
    case G011
    case G012
    case G013
    case G016
    case G014
    case G015
}

class GenreSearchShopData: NSObject, ObservableObject , CLLocationManagerDelegate{
    @Published var izakayaresults: [IzakayaResults] = [IzakayaResults]()
    @Published var izakayashop: [IzakayaShop] = [IzakayaShop]()
    
    @Published var korearesults: [KoreaResults] = [KoreaResults]()
    @Published var koreashop: [KoreaShop] = [KoreaShop]()
    
    @Published var sousakuresults: [SousakuResults] = [SousakuResults]()
    @Published var sousakushop: [SousakuShop] = [SousakuShop]()
    
    @Published var diningresults: [DiningResults] = [DiningResults]()
    @Published var diningshop: [DiningShop] = [DiningShop]()
    
    @Published var washokuresults: [WashokuResults] = [WashokuResults]()
    @Published var washokushop: [WashokuShop] = [WashokuShop]()
    
    @Published var youshokuresults: [YoushokuResults] = [YoushokuResults]()
    @Published var youshokushop: [YoushokuShop] = [YoushokuShop]()
    
    @Published var itarianresults: [ItarianResults] = [ItarianResults]()
    @Published var itarianshop: [ItarianShop] = [ItarianShop]()
    
    @Published var chuukaresults: [ChuukaResults] = [ChuukaResults]()
    @Published var chuukashop: [ChuukaShop] = [ChuukaShop]()
    
    @Published var yakinikuresults: [YakinikuResults] = [YakinikuResults]()
    @Published var yakinikushop: [YakinikuShop] = [YakinikuShop]()
    
    @Published var asiaresults: [AsiaResults] = [AsiaResults]()
    @Published var asiashop: [AsiaShop] = [AsiaShop]()
    
    @Published var worldcookingresults: [WorldCookingResults] = [WorldCookingResults]()
    @Published var worldcookingshop: [WorldCookingShop] = [WorldCookingShop]()

    @Published var caraokeresults: [CaraokeResults] = [CaraokeResults]()
    @Published var caraokeshop: [CaraokeShop] = [CaraokeShop]()
    
    @Published var barresults: [BarResults] = [BarResults]()
    @Published var barshop: [BarShop] = [BarShop]()
    
    @Published var ramenresults: [RamenResults] = [RamenResults]()
    @Published var ramenshop: [RamenShop] = [RamenShop]()
    
    @Published var okonomiyakiresults: [OkonomiyakiResults] = [OkonomiyakiResults]()
    @Published var okonomiyakishop: [OkonomiyakiShop] = [OkonomiyakiShop]()
    
    @Published var caferesults: [CafeResults] = [CafeResults]()
    @Published var cafeshop: [CafeShop] = [CafeShop]()
    
    @Published var otherresults: [OtherResults] = [OtherResults]()
    @Published var othershop: [OtherShop] = [OtherShop]()
    
    
    @Published private(set) var location = CLLocation()
    private let locationManager: CLLocationManager
    
    private var counter = 0
    
    private let genre_array: [String] = ["居酒屋", "ダイニングバー・バル", "創作料理", "和食", "洋食", "イタリアン・フレンチ", "中華", "焼肉・ホルモン", "韓国料理",
    "アジア・エスニック料理", "各国料理", "カラオケ・パーティー", "バー・カクテル", "ラーメン", "カフェ・スイーツ", "お好み焼き・もんじゃ", "その他"]
    
    override init() {
        self.locationManager = CLLocationManager()
        super.init()
        
        self.locationManager.delegate = self
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if (counter%1000 == 0) {
            location = locations.last!
            for genre_name in genre_array {
                genreapiRequest(genre: genre_name, lat: location.coordinate.latitude, lng: location.coordinate.longitude)
            }
            counter += 1
        }
        else {
            counter += 1
            return
        }
    }
    
    func genreapiRequest(genre: String, lat: Double, lng: Double) {
        switch genre {
        case "居酒屋":
            category_api(type: IzakayaJson.self, genre: Genres.G001.rawValue, lat: lat, lng: lng) { (data) in
                self.izakayaresults = [data.results]
                self.izakayashop = self.izakayaresults.first!.shop
            }
        case "ダイニングバー・バル":
            category_api(type: DiningJson.self, genre: Genres.G002.rawValue, lat: lat, lng: lng) { (data) in
                self.diningresults = [data.results]
                self.diningshop = self.diningresults.first!.shop
            }
        case "創作料理":
            category_api(type: SousakuJson.self, genre: Genres.G003.rawValue, lat: lat, lng: lng) { (data) in
                self.sousakuresults = [data.results]
                self.sousakushop = self.sousakuresults.first!.shop
            }
        case "和食":
            category_api(type: WashokuJson.self, genre: Genres.G004.rawValue, lat: lat, lng: lng) { (data) in
                self.washokuresults = [data.results]
                self.washokushop = self.washokuresults.first!.shop
            }
        case "洋食":
            category_api(type: YoushokuJson.self, genre: Genres.G005.rawValue, lat: lat, lng: lng) { (data) in
                self.youshokuresults = [data.results]
                self.youshokushop = self.youshokuresults.first!.shop
            }
        case "イタリアン・フレンチ":
            category_api(type: ItarianJson.self, genre: Genres.G006.rawValue, lat: lat, lng: lng) { (data) in
                self.itarianresults = [data.results]
                self.itarianshop = self.itarianresults.first!.shop
            }
        case "中華":
            category_api(type: ChuukaJson.self, genre: Genres.G007.rawValue, lat: lat, lng: lng) { (data) in
                self.chuukaresults = [data.results]
                self.chuukashop = self.chuukaresults.first!.shop
            }
        case "焼肉・ホルモン":
            category_api(type: YakinikuJson.self, genre: Genres.G008.rawValue, lat: lat, lng: lng) { (data) in
                self.yakinikuresults = [data.results]
                self.yakinikushop = self.yakinikuresults.first!.shop
            }
        case "韓国料理":
            category_api(type: KoreaJson.self, genre: Genres.G017.rawValue, lat: lat, lng: lng) { (data) in
                self.korearesults = [data.results]
                self.koreashop = self.korearesults.first!.shop
            }
        case "アジア・エスニック料理":
            category_api(type: AsiaJson.self, genre: Genres.G009.rawValue, lat: lat, lng: lng) { (data) in
                self.asiaresults = [data.results]
                self.asiashop = self.asiaresults.first!.shop
            }
        case "各国料理":
            category_api(type: WorldCookingJson.self, genre: Genres.G010.rawValue, lat: lat, lng: lng) { (data) in
                self.worldcookingresults = [data.results]
                self.worldcookingshop = self.worldcookingresults.first!.shop
            }
        case "カラオケ・パーティー":
            category_api(type: CaraokeJson.self, genre: Genres.G011.rawValue, lat: lat, lng: lng) { (data) in
                self.caraokeresults = [data.results]
                self.caraokeshop = self.caraokeresults.first!.shop
            }
        case "バー・カクテル":
            category_api(type: BarJson.self, genre: Genres.G012.rawValue, lat: lat, lng: lng) { (data) in
                self.barresults = [data.results]
                self.barshop = self.barresults.first!.shop
            }
        case "ラーメン":
            category_api(type: RamenJson.self, genre: Genres.G013.rawValue, lat: lat, lng: lng) { (data) in
                self.ramenresults = [data.results]
                self.ramenshop = self.ramenresults.first!.shop
            }
        case "カフェ・スイーツ":
            category_api(type: CafeJson.self, genre: Genres.G014.rawValue, lat: lat, lng: lng) { (data) in
                self.caferesults = [data.results]
                self.cafeshop = self.caferesults.first!.shop
            }
        case "お好み焼き・もんじゃ":
            category_api(type: OkonomiyakiJson.self, genre: Genres.G016.rawValue, lat: lat, lng: lng) { (data) in
                self.okonomiyakiresults = [data.results]
                self.okonomiyakishop = self.okonomiyakiresults.first!.shop
            }
        default:
            category_api(type: OtherJson.self, genre: Genres.G015.rawValue, lat: lat, lng: lng) { (data) in
                self.otherresults = [data.results]
                self.othershop = self.otherresults.first!.shop
            }
        }
    }
    
    private func category_api<T: Decodable>(type: T.Type, genre: String, lat: Double, lng: Double, completion: @escaping (T) -> Void){
        let base_url = "https://webservice.recruit.co.jp/hotpepper/gourmet/v1/?"
        var params = [String: Any]()

        params["key"] = "08acf27d318af5e5"
        params["large_area"] = "Z011"
        params["lat"] = lat
        params["lng"] = lng
        params["count"] = 20
        params["format"] = "json"
        params["genre"] = genre
        
        let request = AF.request(base_url, method: .get, parameters: params)
        request.responseJSON { (response) in
            do {
                guard let data = response.data else { return }
                let decoder = JSONDecoder()
                let value = try decoder.decode(T.self, from: data)
                completion(value)
            }
            catch {
                fatalError("Failed Convet \(error)")
            }
        }.resume()
    }
}

