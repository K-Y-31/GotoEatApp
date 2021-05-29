//
//  API.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/10.
//

import Foundation
import Alamofire
import Combine
import CoreLocation

class FetchShopData: NSObject, ObservableObject, CLLocationManagerDelegate{
    @Published var results: [Results] = [Results]()
    @Published var shop: [Shop] = [Shop]()
    
    private var counter = 0
    
    @Published private(set) var location = CLLocation()
    private let locationManager: CLLocationManager
    
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
            apiRequest(lat: location.coordinate.latitude, lng: location.coordinate.longitude)
            counter += 1
        }
        else {
            counter += 1
            return
        }
    }
    
    func apiRequest(lat: Double, lng: Double) {
        let base_url = "https://webservice.recruit.co.jp/hotpepper/gourmet/v1/?"
        var params = [String: Any]()
        params["key"] = "08acf27d318af5e5"
        params["lat"] = lat
        params["lng"] = lng
        params["large_area"] = "Z011"
        params["count"] = 20
        params["format"] = "json"
        
        let request = AF.request(base_url, method: .get, parameters: params)
        request.responseJSON { (response) in
            do {
                guard let data = response.data else { return }
                let decoder: JSONDecoder = JSONDecoder()
                let value = try decoder.decode(ShopJson.self, from: data)
                DispatchQueue.main.async {
                    self.results = [value.results]
                    self.shop = self.results.first!.shop
                }
            } catch {
                print("Failed Convert!: \(error)")
            }
        }.resume()
    }
}
    
