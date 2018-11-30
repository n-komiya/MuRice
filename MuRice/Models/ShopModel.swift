//
//  ShopModel.swift
//  MuRice
//
//  Created by 古宮 伸久 on 2018/11/30.
//  Copyright © 2018年 Yumemi. All rights reserved.
//

import FirebaseFirestore

struct ShopModel {
    let id: String
    let name: String
    let desc: String?

    init?(document: DocumentSnapshot) {
        return nil
    }
}
