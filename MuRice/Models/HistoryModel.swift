//
//  HistoryModel.swift
//  MuRice
//
//  Created by 古宮 伸久 on 2018/11/30.
//  Copyright © 2018年 Yumemi. All rights reserved.
//

import FirebaseFirestore

struct HistoryModel {
    let id: String
    let date: Date
    let price: Int
    let item: String
    let shop: String

    init?(document: DocumentSnapshot) {
        guard let data = document.data(),
            let date = (data["date"] as? Timestamp)?.dateValue(),
            let price = data["price"] as? Int else {
            return nil
        }
        id = document.documentID
        self.date = date
        self.price = price
        self.item = id
        self.shop = ""
    }
}
