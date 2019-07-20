//
//  SomePresenterImplTests.swift
//  DemoTestDataGenerationTests
//
//  Created by Shunsuke Sato on 2019/07/20.
//  Copyright © 2019 Shunsuke Sato. All rights reserved.
//

import Foundation
import XCTest
@testable import DemoTestDataGeneration

class SomePresenterImplTests: XCTestCase {

    override func setUp() {}

    override func tearDown() {}

    func testExample() {
        let presenter = SomePresenterImpl(repository: MockedSomeRepository())
        let view = MockedSomeView()

        presenter.view = view

        presenter.viewDidLoad()
        presenter.selected(at: 0)

        XCTAssertEqual(view.showedSome?.id, 1)
    }

    class MockedSomeView: SomeView {

        var showedSome: SomeEntity?

        func show(_ some: SomeEntity) {
            showedSome = some
        }
    }

    class MockedSomeRepository: SomeRepository {
        func fetch() -> [SomeEntity] {
            return [
                SomeEntity(id: 1,
                           name: "Iniesta",
                           imageUrl: nil,
                           type: .hoge,
                           sub: SubSomeEntity(id: 1, name: ""),
                           deleted: false,
                           createdAt: Date()),
                SomeEntity(id: 2,
                           name: "Xavi",
                           imageUrl: nil,
                           type: .hoge,
                           sub: SubSomeEntity(id: 2, name: ""),
                           deleted: false,
                           createdAt: Date()),
                SomeEntity(id: 3,
                           name: "Puyol",
                           imageUrl: nil,
                           type: .hoge,
                           sub: SubSomeEntity(id: 3, name: ""),
                           deleted: false,
                           createdAt: Date())
            ]
        }
    }
}
