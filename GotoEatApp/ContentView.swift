//
//  ContentView.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/08.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass.circle")
                    Text("Search")
                }
            LocationView()
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Location")
                }
            LibralyView()
                .tabItem {
                    Image(systemName: "bookmark.fill")
                    Text("Libraly")
                }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(SaveShopData())
    }
}
