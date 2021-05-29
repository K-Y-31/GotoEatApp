//
//  LocationView.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/26.
//

import SwiftUI
import CoreLocation

struct LocationView: View {
    @ObservedObject var locationObserver = LocationObserver()
    @State var screen: CGSize = UIScreen.main.bounds.size
    var body: some View {
        NavigationView {
            LocationMapView(coordinate: self.locationObserver.location.coordinate)
                .frame(height: screen.height)
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
