//
//  HomeView.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/13.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                PageView(pages: ModelData().features.map { ShopCard(landMark: $0) })
                    .frame(width: 400, height: 300, alignment: .top)
                Divider()
                ShopRow()
                Divider()
                CategoryRow()
            }
            .navigationBarTitle("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
