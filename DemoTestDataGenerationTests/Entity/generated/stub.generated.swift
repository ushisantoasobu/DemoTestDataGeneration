// Generated using Sourcery 0.16.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation
@testable import DemoTestDataGeneration

extension SomeEntity {
    static func stub(
        id: Int = 0,
        name: String = "",
        imageUrl: String? = nil,
        type1: SomeType = .hoge,
        type2: SomeAssociatedValueIncludedType = .aaa(count: 0),
        sub: SubSomeEntity = SubSomeEntity.stub(),
        deleted: Bool = false,
        createdAt: Date = Date()
    ) -> SomeEntity {
        return SomeEntity(
            id: id,
            name: name,
            imageUrl: imageUrl,
            type1: type1,
            type2: type2,
            sub: sub,
            deleted: deleted,
            createdAt: createdAt
        )
    }
}

extension SubSomeEntity {
    static func stub(
        id: Int = 0,
        name: String = ""
    ) -> SubSomeEntity {
        return SubSomeEntity(
            id: id,
            name: name
        )
    }
}

