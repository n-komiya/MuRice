//
//  HistoryViewModel.swift
//  MuRice
//
//  Created by 古宮 伸久 on 2018/11/30.
//  Copyright © 2018年 Yumemi. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

struct HistoryViewModel {
    let bag = DisposeBag()

    let entry = BehaviorRelay<[HistoryModel]>(value: [])

    func addListener() {
        DataStore.db
            .collection("history")
            .order(by: "date", descending: true)
            .addSnapshotListener { (snapshot, e) in
                if let docs = snapshot?.documents
                    .compactMap(HistoryModel.init) {
                    self.entry.accept(docs)
                }
        }
    }
}
