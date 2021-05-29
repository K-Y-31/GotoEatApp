//
//  OtherCategoryShop.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/28.
//

import SwiftUI

struct OtherCategoryShop: View {
    @State var categoryshop: OtherShop
    var body: some View {
        HStack {
            NavigationLink(
                destination: OtherShopView(shop: categoryshop)) {
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

struct OtherCategoryShop_Previews: PreviewProvider {
    static var previews: some View {
        OtherCategoryShop(categoryshop: [OtherShop]()[0])
    }
}
