//
//  ShopRow.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/10.
//

import SwiftUI

struct ShopCell: View {
    var shop: Shop
    
    var body: some View {
        VStack(alignment: .center) {
            URLImageView(viewModel: .init(url: shop.logo_image))
                .aspectRatio(contentMode: .fill)
                .frame(width: 155, height: 155)
                .clipShape(Circle())
            Text(shop.name)
                .font(.caption)
                .foregroundColor(.primary)
        }
        .padding(.leading, 15)
    }
}

struct ShopRow: View {
    @ObservedObject var shopData = FetchShopData()
    var body: some View {
        VStack(alignment: .leading) {
            Text("Shop")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(shopData.shop) { (item) in
                        NavigationLink(destination: ShopView(shop: item)) {
                            ShopCell(shop: item)
                        }
                    }
                }
            }
        }
    }
}

struct ShopRow_Previews: PreviewProvider {
    static var previews: some View {
        ShopRow()
    }
}
