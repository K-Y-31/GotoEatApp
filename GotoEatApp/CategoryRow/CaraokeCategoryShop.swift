//
//  CaraokeCategoryShop.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/28.
//

import SwiftUI

struct CaraokeCategoryShop: View {
    @State var categoryshop: CaraokeShop
    var body: some View {
        HStack {
            NavigationLink(
                destination: CaraokeShopView(shop: categoryshop)) {
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

struct CaraokeCategoryShop_Previews: PreviewProvider {
    static var previews: some View {
        CaraokeCategoryShop(categoryshop: [CaraokeShop]()[0])
    }
}
