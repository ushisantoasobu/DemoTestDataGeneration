//
//  SomeRepository.swift
//  DemoTestDataGeneration
//
//  Created by Shunsuke Sato on 2019/07/20.
//  Copyright © 2019 Shunsuke Sato. All rights reserved.
//

import Foundation

protocol SomeRepository {
    func fetch() -> [SomeEntity]
}

class SomeRepositoryImpl: SomeRepository {

    func fetch() -> [SomeEntity] {
        return [] // TODO
    }
}
