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
                SomeEntity.stub(id: 1),
                SomeEntity.stub(id: 2),
                SomeEntity.stub(id: 3)
            ]
        }
    }
}
