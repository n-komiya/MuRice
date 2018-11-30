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
        return nil
    }
}
