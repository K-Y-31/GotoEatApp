//
//  OtherShopView.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/28.
//

import SwiftUI
import MapKit

struct OtherShopView: View {
    var shop: OtherShop
    @State var degree: Double = 180
    @State var isZoomMode = false
    @State var showingAlert = false
    @State var isSave = false
    @State var screen: CGSize = UIScreen.main.bounds.size
    
    @Environment(\.managedObjectContext) var viewContext
    
    var body: some View {
        ScrollView {
            let locationCordinate = CLLocationCoordinate2D(latitude: shop.lat, longitude: shop.lng)
            MapView(location: locationCordinate, shopname: shop.name)
                .frame(height: self.isZoomMode ? screen.height : 300)
                .onTapGesture {
                    withAnimation {
                        self.isZoomMode.toggle()
                    }
            }.edgesIgnoringSafeArea(
                self.isZoomMode ? .all : .init())
            if !isZoomMode {
                Group {
                    ShopImage(image: URLImageView(viewModel: .init(url: shop.photo.mobile.l)))
                        .offset(y: -130)
                        .padding(.bottom, -130)
                        .onTapGesture {
                            withAnimation {
                                self.showingAlert.toggle()
                            }
                        }
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text("登録"),
                                  message: Text("お店の情報をLibralyに登録しますか?"),
                                  primaryButton: .cancel(Text("はい"),
                                                         action: {
                                                            self.save()
                                                         }),
                                  secondaryButton: .default(Text("いいえ")))
                        }
                    Spacer()
                        .alert(isPresented: $isSave) {
                            Alert(title: Text("成功"),
                                  message: Text("データの保存に成功しました。"),
                                  dismissButton: .default(Text("OK")))
                        }
                    Text(shop.name)
                        .padding()
                        .font(.largeTitle)
                    Divider()
                    Text("住所: \(shop.address)")
                        .lineLimit(nil)
                        .multilineTextAlignment(.center)
                        .padding()
                    Text("アクセス: \(shop.access)")
                            .padding()
                    Divider()
                }
                Text(shop.catch)
                    .multilineTextAlignment(.center)
                Divider()
                Text("コース料理: \(shop.course)")
                    .multilineTextAlignment(.center)
                Divider()
                Text(shop.budget_memo)
                    .multilineTextAlignment(.center)
            }
        }.navigationBarTitle(shop.name)
    }
    
    private func save() {
        ShopCoreData.create(in: viewContext, id: shop.id, access: shop.access, address: shop.address, barrier_free: shop.barrier_free, budget: shop.budget.average, child: shop.child, coupon_urls: shop.coupon_urls.sp, course: shop.course, genre: shop.genre.name, lat: shop.lat, lng: shop.lng, logo_image: shop.logo_image, photo: shop.photo.mobile.l, name: shop.name, _catch: shop.catch, budget_memo: shop.budget_memo)
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            self.isSave = true
        }
    }
}

struct OtherShopView_Previews: PreviewProvider {
    static var previews: some View {
        let shop = [OtherShop]()
        NavigationView{
            OtherShopView(shop: shop[2])
        }
    }
}


