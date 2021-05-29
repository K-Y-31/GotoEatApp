//
//  SearchView.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/15.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @State var showResult = false
    @ObservedObject var searchshopData = SearchShopData()
    @ObservedObject var keyboard = KeyboardObserver()
    var body: some View {
        NavigationView {
            Form {
                HStack {
                    SearchViewController(text: $searchText, placeholder: "お店を探す")
                    Button(action: {
                        self.searchshopData.searchText = searchText
                        self.searchshopData.searchapiRequest()
                        self.showResult.toggle()
                    }) {
                        Text("検索")
                    }.sheet(isPresented: $showResult) {
                        SearchResultView(searchshop: searchshopData, searchText: $searchText)
                    }
                }
                .onAppear{
                    self.keyboard.startObserver()
                }.onDisappear {
                    self.keyboard.stopObserver()
                }.padding(.bottom, self.keyboard.keyboardHeight)
            }
        }
    }
}

struct SearchResultView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var searchshop: SearchShopData
    @Binding var searchText: String
    var body: some View {
        NavigationView {
            List {
                ForEach(searchshop.shop) { (result) in
                    SearchResultItemView(searchshop: result)
                }
            }
            .navigationTitle(Text("検索ワード: \(searchText)"))
            .navigationBarItems(trailing: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Closed")
            })
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
