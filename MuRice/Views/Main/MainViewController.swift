//
//  MainViewController.swift
//  MuRice
//
//  Created by 古宮 伸久 on 2018/11/30.
//  Copyright © 2018年 Yumemi. All rights reserved.
//

import UIKit
import SnapKit
import RxCocoa
import RxSwift

class MainViewController: UIViewController {
    let bag = DisposeBag()

    private lazy var tableView: UITableView = {
        let table = UITableView()
        return table
    }()

    private lazy var viewModel: HistoryViewModel = {
        let viewModel = HistoryViewModel()
        return viewModel
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(tableView)
        tableView.snp.makeConstraints{
            $0.edges.equalTo(view.safeAreaLayoutGuide)
        }

        viewModel.entry.bind(to: tableView.rx.items(cellIdentifier: HistoryCell.className, cellType: HistoryCell.self)) { row, element, cell in
            cell.configure(element)
        }.disposed(by: bag)
    }
}
