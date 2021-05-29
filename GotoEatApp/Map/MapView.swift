//
//  MapView.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/14.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var location: CLLocationCoordinate2D
    var shopname: String
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: location, span: span)
        uiView.setRegion(region, animated: true)
        
        let markerPin = MKPointAnnotation()
        markerPin.coordinate = location
        markerPin.title = shopname
        uiView.addAnnotation(markerPin)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        let locationCordinate = CLLocationCoordinate2D(latitude: [Shop]()[0].lat, longitude: [Shop]()[0].lng)
        MapView(location: locationCordinate, shopname: "")
    }
}
