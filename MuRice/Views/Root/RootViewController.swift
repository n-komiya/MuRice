//
//  RootViewController.swift
//  MuRice
//
//  Created by 古宮 伸久 on 2018/11/30.
//  Copyright © 2018年 Yumemi. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let vc = R.storyboard.tab.instantiateInitialViewController()!
        addChildViewController(vc)
        view.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
    }
}
