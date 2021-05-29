//
//  SearchResultItemView.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/19.
//

import SwiftUI

struct SearchResultItemView: View {
    var searchshop: SearchShop
    var body: some View {
        NavigationLink(
            destination: SearchItemInfo(shop: searchshop)) {
            HStack {
                VStack {
                    URLImageView(viewModel: .init(url: searchshop.photo.mobile.l))
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .cornerRadius(5)
                        .position(x: 80, y: 50)
                    Text(searchshop.genre.name)
                        .lineLimit(1)
                }
                VStack {
                    Spacer()
                    Text(searchshop.name)
                        .lineLimit(2)
                    Spacer(minLength: 30)
                    Text(searchshop.catch)
                        .font(.subheadline)
                        .lineLimit(1)
                    Spacer()
                }
            }
        }
    }
}

struct SearchResultItemView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultItemView(searchshop: [SearchShop]()[2])
    }
}
