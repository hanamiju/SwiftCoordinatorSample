//
//  FirstConfigrator.swift
//  CoodinatorSample
//
//  Created by masao on 2018/02/27.
//  Copyright © 2018年 BANK, Inc. All rights reserved.
//

import UIKit

// 依存関係を作る人
struct FirstConfigrator {
    
    func configure(with vc: FirstViewController) {
        let coorcinator = FirstCoordinator(currentVC: vc)
        let viewModel = FirstViewModel(with: coorcinator, labelStr: "First")
        
        vc.viewModel = viewModel
    }
}
