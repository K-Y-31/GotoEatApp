//
//  ShopImage.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/13.
//

import SwiftUI

fileprivate let gradient = Gradient(colors: [
    .white,
    Color.init(red: 0.9, green: 0.9, blue: 0.9)])

fileprivate let liner = LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)

struct ShopImage: View {
    let image: URLImageView
    var body: some View {
        image
            .aspectRatio(contentMode: .fill)
            .frame(width: 250, height: 250, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(liner, lineWidth: 8))
    }
}

struct ShopImage_Previews: PreviewProvider {
    static var previews: some View {
        let shop = [Shop]()
        Group {
            ForEach(shop) { data in
                ShopImage(image: URLImageView(viewModel: .init(url: data.photo.mobile.l)))
            }
        }.previewLayout(.fixed(width: 300, height: 300))
    }
}
