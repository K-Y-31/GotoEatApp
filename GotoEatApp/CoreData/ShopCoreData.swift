//
//  ShopCoreData.swift
//  GotoEatApp
//
//  Created by 木本瑛介 on 2021/05/22.
//

import CoreData

extension ShopCoreData {
    static func create(in managedObjectContext: NSManagedObjectContext,
                       id: String = "",
                       access: String = "",
                       address: String = "",
                       barrier_free: String = "",
                       budget: String = "",
                       child: String = "",
                       coupon_urls: String = "",
                       course: String = "",
                       genre: String = "",
                       lat: Double = 0.0,
                       lng: Double = 0.0,
                       logo_image: String = "",
                       photo: String = "",
                       name: String = "",
                       _catch: String = "",
                       budget_memo: String = "") {
        let newData = self.init(context: managedObjectContext)
        newData.id = id
        newData.access = access
        newData.address = address
        newData.barrier_free = barrier_free
        newData.budget = budget
        newData.child = child
        newData.coupon_urls = coupon_urls
        newData.course = course
        newData.genre = genre
        newData.lat = lat
        newData.lng = lng
        newData.logo_image = logo_image
        newData.photo = photo
        newData.name = name
        
        do {
            try managedObjectContext.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}

extension Collection where Element == ShopCoreData, Index == Int {
    func delete(at indices: IndexSet, from managedObjectContext: NSManagedObjectContext) {
        indices.forEach {
            managedObjectContext.delete(self[$0] )
        }
        do {
            try managedObjectContext.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}
