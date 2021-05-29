//
//  SearchShopData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/19.
//

import Foundation
import SwiftUI
import Alamofire

class SearchShopData: ObservableObject {
    @Published var results: [SearchResults] = [SearchResults]()
    @Published var shop: [SearchShop] = [SearchShop]()
    
    @Published var searchText: String = ""
    
    func searchapiRequest() {
        let base_url = "https://webservice.recruit.co.jp/hotpepper/gourmet/v1/?"
        var params = [String: Any]()
        params["key"] = "08acf27d318af5e5"
        params["name"] = searchText
        params["large_area"] = "Z011"
        params["count"] = 10
        params["format"] = "json"
        
        let request = AF.request(base_url, method: .get, parameters: params)
        request.responseJSON { (reponse) in
            do {
                guard let data = reponse.data else { return }
                let decoder: JSONDecoder = JSONDecoder()
                let value = try decoder.decode(SearchShopJson.self, from: data)
                DispatchQueue.main.async {
                    self.results = [value.results]
                    self.shop = self.results.first!.shop
                }
            }
            catch {
                fatalError("Failed Convert: \(error)")
            }
        }.resume()
    }
}
