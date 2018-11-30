//
//  MainViewController.swift
//  MuRice
//
//  Created by 古宮 伸久 on 2018/11/30.
//  Copyright © 2018年 Yumemi. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class MainViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    let bag = DisposeBag()

    private lazy var viewModel: HistoryViewModel = {
        let viewModel = HistoryViewModel()
        viewModel.addListener()
        return viewModel
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(cellType: HistoryCell.self)

        viewModel.entry.bind(to: tableView.rx.items(cellIdentifier: HistoryCell.className, cellType: HistoryCell.self)) { row, element, cell in
            cell.configure(element)
        }.disposed(by: bag)
    }
}
