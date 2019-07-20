//
//  ViewController.swift
//  DemoTestDataGeneration
//
//  Created by Shunsuke Sato on 2019/07/20.
//  Copyright © 2019 Shunsuke Sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension ViewController: SomeView {

    func show(_ some: SomeEntity) {
        print(some)
    }
}

