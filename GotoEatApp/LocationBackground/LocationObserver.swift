//
//  GetLocation.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/26.
//

import CoreLocation
import Combine

class LocationObserver: NSObject, ObservableObject, CLLocationManagerDelegate {
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
        location = locations.last!
        print(location.coordinate)
    }
}

