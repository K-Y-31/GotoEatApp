//
//  ShopCard.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/17.
//

import SwiftUI

struct ShopCard: View {
    var landMark: Landmark
    var body: some View {
        landMark.featureImage?
            .resizable()
            .aspectRatio(3/2, contentMode: .fill)
    }
}

struct ShopCard_Previews: PreviewProvider {
    static var previews: some View {
        ShopCard(landMark: ModelData().features[0])
    }
}
