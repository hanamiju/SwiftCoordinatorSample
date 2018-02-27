//
//  SecondViewController.swift
//  CoodinatorSample
//
//  Created by masao on 2018/02/27.
//  Copyright © 2018年 BANK, Inc. All rights reserved.
//

import UIKit

final class SecondViewController: UIViewController {
    
    var str: String!
    var viewModel: SecondViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = viewModel.labelStr
    }
    
    @IBAction func pushed(_ sender: Any) {
        viewModel.push()
    }
}

extension SecondViewController: ViewControllerInitializable {
    static func viewController() -> SecondViewController {
        
        let vc = UIStoryboard.init(name: "Second", bundle: nil).instantiateInitialViewController() as! SecondViewController
        SecondConfigrator().configure(with: vc)
        
        return vc
    }
}
