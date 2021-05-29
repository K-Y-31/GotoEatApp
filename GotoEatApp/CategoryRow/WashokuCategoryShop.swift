//
//  WashokuCategoryShop.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/28.
//

import SwiftUI

struct WashokuCategoryShop: View {
    @State var categoryshop: WashokuShop
    var body: some View {
        HStack {
            NavigationLink(
                destination: WashokuShopView(shop: categoryshop)) {
                URLImageView(viewModel: .init(url: categoryshop.photo.mobile.l))
                    .aspectRatio(3/2, contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                VStack {
                    Text(categoryshop.name)
                    Text(categoryshop.catch)
                }
            }
        }
    }
}

struct WashokuCategoryShop_Previews: PreviewProvider {
    static var previews: some View {
        WashokuCategoryShop(categoryshop: [WashokuShop]()[0])
    }
}
