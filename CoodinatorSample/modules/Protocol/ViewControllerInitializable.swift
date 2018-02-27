//
//  ViewControllerInitializable.swift
//  CoodinatorSample
//
//  Created by masao on 2018/02/27.
//  Copyright © 2018年 BANK, Inc. All rights reserved.
//

import UIKit

// Builder的な人、中でConfigratorを呼ぼう
protocol ViewControllerInitializable where Self: UIViewController {
    static func viewController() -> Self
}
