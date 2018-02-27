//
//  FirstViewController.swift
//  CoodinatorSample
//
//  Created by masao on 2018/02/27.
//  Copyright © 2018年 BANK, Inc. All rights reserved.
//

import UIKit

final class FirstViewController: UIViewController {
    
    var viewModel: FirstViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = viewModel.labelStr
    }

    @IBAction func pushed(_ sender: Any) {
        viewModel.push()
    }
}

extension FirstViewController: ViewControllerInitializable {
    static func viewController() -> FirstViewController {
        
        let vc = UIStoryboard.init(name: "First", bundle: nil).instantiateInitialViewController() as! FirstViewController
        FirstConfigrator().configure(with: vc)
        
        return vc
    }
}
