//
//  CategoryRow.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/11.
//

import SwiftUI

struct CategoryRow: View {
    
    @ObservedObject var genre_shop = GenreSearchShopData()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Genre")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(Category.allCases) { item in
                        NavigationLink(
                            destination: CategoryShopView_Text(genre_name: item.rawValue, genre_shop: genre_shop)){
                            VStack(alignment: .leading) {
                                Image(item.rawValue)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 155, height: 155)
                                    .cornerRadius(5)
                                Text(item.rawValue)
                                    .foregroundColor(.primary)
                                    .font(.caption)
                            }.padding(.leading, 15)
                        }
                    }
                }
            }
        }
    }
}

struct CategoryShopView_Text: View {
    var genre_name: String
    @ObservedObject var genre_shop: GenreSearchShopData
    
    @ViewBuilder
    var body: some View {
        if genre_name == "居酒屋" {
            List {
                ForEach(genre_shop.izakayashop) { item in
                    IzakayaCategoryShopView(categoryshop: item)
                }
            }.navigationBarTitle(Text(genre_name))
        }
        else if genre_name == "ダイニングバー・バル" {
            List {
                ForEach(genre_shop.diningshop) { item in
                    DiningCategoryShop(categoryshop: item)
                }
            }.navigationBarTitle(Text(genre_name))
        }
        else if genre_name == "創作料理" {
            List {
                ForEach(genre_shop.sousakushop) { item in
                    SousakuCategoryShop(categoryshop: item)
                }
            }.navigationBarTitle(Text(genre_name))
        }
        else if genre_name == "韓国料理" {
            List {
                ForEach(genre_shop.koreashop) { item in
                    KoreaCategoryShopView(categoryshop: item)
                }
            }.navigationBarTitle(Text(genre_name))
        }
        else if genre_name == "中華" {
            List {
                ForEach(genre_shop.chuukashop) { item in
                    ChuukaCategoryShop(categoryshop: item)
                }
            }.navigationBarTitle(Text(genre_name))
        }
        else if genre_name == "洋食" {
            List {
                ForEach(genre_shop.youshokushop) { item in
                    YoushokuCategoryShop(categoryshop: item)
                }
            }.navigationBarTitle(Text(genre_name))
        }
        else if genre_name == "和食" {
            List {
                ForEach(genre_shop.washokushop) { item in
                    WashokuCategoryShop(categoryshop: item)
                }
            }.navigationBarTitle(Text(genre_name))
        }
        else if genre_name == "ラーメン" {
            List {
                ForEach(genre_shop.ramenshop) { item in
                    RamenCategoryShop(categoryshop: item)
                }
            }.navigationBarTitle(Text(genre_name))
        }
        else if genre_name == "バー・カクテル" {
            List {
                ForEach(genre_shop.barshop) { item in
                    BarCategoryShop(categoryshop: item)
                }
            }.navigationBarTitle(Text(genre_name))
        }
        else if genre_name == "カフェ・スイーツ" {
            List {
                ForEach(genre_shop.cafeshop) { item in
                    CafeCategoryShop(categoryshop: item)
                }
            }.navigationBarTitle(Text(genre_name))
        }
        else if genre_name == "お好み焼き・もんじゃ" {
            List {
                ForEach(genre_shop.okonomiyakishop) { item in
                    OkonomiyakiCategoryShop(categoryshop: item)
                }
            }.navigationBarTitle(Text(genre_name))
        }
        else if genre_name == "イタリアン・フレンチ" {
            List {
                ForEach(genre_shop.itarianshop) { item in
                    ItarianCategoryShop(categoryshop: item)
                }
            }.navigationBarTitle(Text(genre_name))
        }
        else if genre_name == "アジア・エスニック料理" {
            List {
                ForEach(genre_shop.asiashop) { item in
                    AsiaCategoryShop(categoryshop: item)
                }
            }.navigationBarTitle(Text(genre_name))
        }
        else if genre_name == "カラオケ・パーティー" {
            List {
                ForEach(genre_shop.caraokeshop) { item in
                    CaraokeCategoryShop(categoryshop: item)
                }
            }.navigationBarTitle(Text(genre_name))
        }
        else if genre_name == "各国料理" {
            List {
                ForEach(genre_shop.worldcookingshop) { item in
                    WorldCokkingCategoryShop(categoryshop: item)
                }
            }.navigationBarTitle(Text(genre_name))
        }
        else {
            List {
                ForEach(genre_shop.othershop) { item in
                    OtherCategoryShop(categoryshop: item)
                }
            }.navigationBarTitle(Text(genre_name))
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow()
    }
}
