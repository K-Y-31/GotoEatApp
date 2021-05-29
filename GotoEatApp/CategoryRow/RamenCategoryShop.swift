//
//  RamenCategoryShop.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/28.
//

import SwiftUI

struct RamenCategoryShop: View {
    @State var categoryshop: RamenShop
    var body: some View {
        HStack {
            NavigationLink(
                destination: RamenShopView(shop: categoryshop)) {
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

struct RamenCategoryShop_Previews: PreviewProvider {
    static var previews: some View {
        RamenCategoryShop(categoryshop: [RamenShop]()[0])
    }
}
