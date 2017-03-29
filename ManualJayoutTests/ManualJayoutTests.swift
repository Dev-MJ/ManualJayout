//
//  ManualJayoutTests.swift
//  ManualJayoutTests
//
//  Created by Dev.MJ on 29/03/2017.
//  Copyright © 2017 MJ. All rights reserved.
//

import XCTest
import ManualJayout

class ManualJayoutTests: XCTestCase {
  
  ///각각의 testcase가 실행되기 전에
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  ///하나 끝날 떄마다 호출
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  ///테스트 코드 작성. test로 시작되는 함수들은 다 테스트 함수들이다
  func testExample() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  }
  
  func testWidth() {
    let view = UIView()
    view.width = 50   //test 하면 에러가 남. '⭐️⭐️width' is inaccessible due to 'internal' protection level
    XCTAssertEqual(view.frame.size.width, 50)
  }
  
  func testHeight() {
    let view = UIView()
    view.height = 100
    XCTAssertEqual(view.frame.size.height, 100)
  }
  
  func testTop() {
    let view = UIView()
    view.top = 10
    XCTAssertEqual(view.frame.origin.y, 10)
  }
  
  func testBottom(){
    let view = UIView()
    view.height = 30
    view.bottom = 40
    XCTAssertEqual(view.top, 40-30) //⭐️⭐️
  }
  
  func testLeft(){
    let view = UIView()
    view.left = 200
    XCTAssertEqual(view.frame.origin.x, 200)
  }
  
  func testRight(){
    let view = UIView()
    view.width = 60
    view.right = 190
    XCTAssertEqual(view.left, 190-60)
  }
  
  ///measure 라는 클로저 안에 있는 코드가 수행될 때 퍼포먼스 체킹
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }
  
}
