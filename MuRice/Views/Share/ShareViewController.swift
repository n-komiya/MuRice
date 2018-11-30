//
//  ShareViewController.swift
//  MuRice
//
//  Created by 古宮 伸久 on 2018/11/30.
//  Copyright © 2018年 Yumemi. All rights reserved.
//

import UIKit
import SnapKit

class ShareViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let element: [String] = ["商品から登録", "お店から登録", "チラシから登録", "レシートから登録"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
    }
}

extension ShareViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return element.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.shareMenu.identifier, for: indexPath)
        cell.textLabel?.text = element[indexPath.row]
        return cell
    }
}
