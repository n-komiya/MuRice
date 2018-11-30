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

    var entry: Observable<[HistoryModel]> {
        return .just([])
    }

}
