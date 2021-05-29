//
//  CategoryShopView.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/23.
//

import SwiftUI

struct IzakayaCategoryShopView: View {
    @State var categoryshop: IzakayaShop

    var body: some View {
        HStack {
            NavigationLink(destination: IzakayaShopView(shop: categoryshop)) {
                URLImageView(viewModel: .init(url: categoryshop.photo.mobile.l))
                    .aspectRatio(3/2, contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                VStack {
                    Text(categoryshop.name)
                        .font(.title2)
                    Text("\(categoryshop.catch)")
                        .font(.subheadline)
                }
            }
        }
    }
}

struct IzakayaCategoryShopView_Previews: PreviewProvider {
    static var previews: some View {
        IzakayaCategoryShopView(categoryshop: [IzakayaShop]()[0])
    }
}
