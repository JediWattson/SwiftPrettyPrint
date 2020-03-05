//
// String+extensionTests.swift
// SwiftPrettyPrint
//
// Created by Yusuke Hosonuma on 2020/02/27.
// Copyright (c) 2020 Yusuke Hosonuma.
//

@testable import SwiftPrettyPrint
import XCTest

class String_extensionTests: XCTestCase {
    override func setUp() {}

    override func tearDown() {}

    func testIndentTail() {
        XCTAssertEqual("Single line".indentTail(size: 4), "Single line")

        let text = """
        Apple
        Orange
        Banana
        """

        var expected = """
        Apple
          Orange
          Banana
        """
        assertEqualLines(text.indentTail(size: 2), expected)

        expected = """
        Apple
            Orange
            Banana
        """
        assertEqualLines(text.indentTail(size: 4), expected)
    }
}