//
//  LibralyView.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/20.
//

import SwiftUI

struct LibralyView: View {
    @State var showDeleteActionSheet = false

    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \ShopCoreData.id, ascending: false)], animation: .default)
    var shopData: FetchedResults<ShopCoreData>
    @Environment(\.managedObjectContext) var viewContext
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(shopData) { data in
                    HStack {
                        VStack {
                            URLImageView(viewModel: .init(url: data.photo!))
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .position(x: 80, y: 50)
                        }
                        VStack {
                            Spacer()
                            Text(data.name!)
                                .lineLimit(2)
                            Spacer()
                        }
                    }
                }.onDelete { indices in
                    self.shopData.delete(at: indices, from: self.viewContext)
                    
                }
            }
            .navigationBarTitle("Shop List")
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct LibralyView_Previews: PreviewProvider {
    static var previews: some View {
        let context = (UIApplication.shared.delegate as! AppDelegate)
            .persitentcontainer.viewContext
        return LibralyView()
            .environment(\.managedObjectContext, context)
    }
}
