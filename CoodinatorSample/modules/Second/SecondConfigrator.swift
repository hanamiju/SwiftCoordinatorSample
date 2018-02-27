//
//  SecondConfigrator.swift
//  CoodinatorSample
//
//  Created by masao on 2018/02/27.
//  Copyright © 2018年 BANK, Inc. All rights reserved.
//

import UIKit

struct SecondConfigrator {
    
    func configure(with vc: SecondViewController) {
        let coorcinator = SecondCoordinator(currentVC: vc)
        let viewModel = SecondViewModel(with: coorcinator, labelStr: "Second")
        
        vc.viewModel = viewModel
    }
}
