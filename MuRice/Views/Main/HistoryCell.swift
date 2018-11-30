//
//  HistoryCell.swift
//  MuRice
//
//  Created by 古宮 伸久 on 2018/11/30.
//  Copyright © 2018年 Yumemi. All rights reserved.
//

import UIKit
import SnapKit

class HistoryCell: UITableViewCell {

    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var item: UILabel!
    @IBOutlet weak var shop: UILabel!
    @IBOutlet weak var info: UILabel!

    func configure(_ model: HistoryModel) {
        item.text = model.item
        price.text = "\(model.price)"
    }
}
