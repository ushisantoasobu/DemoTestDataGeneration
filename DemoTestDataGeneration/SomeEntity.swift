//
//  SomeEntity.swift
//  DemoTestDataGeneration
//
//  Created by Shunsuke Sato on 2019/07/20.
//  Copyright © 2019 Shunsuke Sato. All rights reserved.
//

import Foundation

struct SomeEntity {
    let id: Int
    let name: String
    let imageUrl: String?
    let type: SomeType
    let sub: SubSomeEntity
    let deleted: Bool
    let createdAt: Date
}

enum SomeType {
    case hoge
    case fuga
}
