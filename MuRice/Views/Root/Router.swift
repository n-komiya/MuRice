//
//  Router.swift
//  MuRice
//
//  Created by 古宮 伸久 on 2018/11/30.
//  Copyright © 2018年 Yumemi. All rights reserved.
//

import UIKit

final class Router {
    let root: RootViewController

    init() {
        self.root = RootViewController()
    }

    enum Screen {
        case main
    }

    func route(to screen: Screen, from viewController: UIViewController) {
        switch screen {
        case .main:
            root.showMain()
        }
    }
}
