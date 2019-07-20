//
//  SomeContract.swift
//  DemoTestDataGeneration
//
//  Created by Shunsuke Sato on 2019/07/20.
//  Copyright © 2019 Shunsuke Sato. All rights reserved.
//

import Foundation

protocol SomeView: class {
    func show(_ some: SomeEntity)
}

protocol SomePresenter {
    func viewDidLoad()
    func selected(at index: Int)
}
