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

        let stack = UIStackView(arrangedSubviews: [historyDate, itemName, itemPrice])
        stack.axis = .vertical
        contentView.addSubview(stack)
        stack.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
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
