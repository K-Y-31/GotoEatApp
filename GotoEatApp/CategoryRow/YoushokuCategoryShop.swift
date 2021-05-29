//
//  YoushokuCategoryShop.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/28.
//

import SwiftUI

struct YoushokuCategoryShop: View {
    @State var categoryshop: YoushokuShop

    var body: some View {
        HStack {
            NavigationLink(destination: YoushokuShopView(shop:categoryshop)) {
                URLImageView(viewModel: .init(url: categoryshop.photo.mobile.l))
                    .aspectRatio(3/2, contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                VStack {
                    Text(categoryshop.name)
                    Text("\(categoryshop.catch)")
                }
            }
        }
    }
}

struct YoushokuCategoryShop_Previews: PreviewProvider {
    static var previews: some View {
        YoushokuCategoryShop(categoryshop: [YoushokuShop]()[0])
    }
}
