//
//  HistoryCell.swift
//  MuRice
//
//  Created by 古宮 伸久 on 2018/11/30.
//  Copyright © 2018年 Yumemi. All rights reserved.
//

import UIKit
import Nuke

class HistoryCell: UITableViewCell {

    var itemImage: UIImageView = {
        let image = UIImageView()
        return image
    }()
    var itemName: UILabel = {
        let label = UILabel()
        return label
    }()
    var historyDate: UILabel = {
        let label = UILabel()
        return label
    }()
    var itemPrice: UILabel = {
        let label = UILabel()
        return label
    }()

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        contentView.addSubview(itemImage)
        contentView.addSubview(itemName)
        contentView.addSubview(historyDate)
        contentView.addSubview(itemPrice)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(_ model: HistoryModel) {
        itemName.text = model.item
        itemPrice.text = "\(model.price)"
        historyDate.text = "\(model.date)"
    }
}
