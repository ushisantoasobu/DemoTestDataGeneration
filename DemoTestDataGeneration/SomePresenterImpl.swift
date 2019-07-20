//
//  SomePresenterImpl.swift
//  DemoTestDataGeneration
//
//  Created by Shunsuke Sato on 2019/07/20.
//  Copyright © 2019 Shunsuke Sato. All rights reserved.
//

import Foundation

class SomePresenterImpl: SomePresenter {

    weak var view: SomeView?

    let repository: SomeRepository

    var list: [SomeEntity] = []

    init(repository: SomeRepository) {
        self.repository = repository
    }

    func viewDidLoad() {
        list = repository.fetch()
    }

    func selected(at index: Int) {
        let entity = list[index]
        view?.show(entity)
    }
}
