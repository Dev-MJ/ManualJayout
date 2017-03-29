//
//  ManualJayout.swift
//  ManualJayout
//
//  Created by Dev.MJ on 29/03/2017.
//  Copyright © 2017 MJ. All rights reserved.
//

import UIKit

/* 우리가 만들 라이브러리!!
 let view = UIView()
 view.width = 100
 */

extension UIView {
  
  //⭐️⭐️extension에는 stored property 담을 수 없음.
  public var width: CGFloat { //⭐️⭐️public 안하면 internal 이 생략되어ㅣㅇㅆ음
    get {
      return self.frame.size.width
    }
    set{
      self.frame.size.width = newValue
    }
  }
  
  public var height: CGFloat {
    get {
      return self.frame.size.height
    }
    set {
      self.frame.size.height = newValue
    }
  }

  //⭐️⭐️
  public var left: CGFloat {
    get {
      return self.frame.origin.x
    }
    set {
      self.frame.origin.x = newValue
    }
  }
  
  //⭐️⭐️
  public var right: CGFloat {
    get {
      //return self.frame.origin.x + self.frame.size.width
      return self.left + self.width
    }
    set {
      //self.frame.origin.x = newValue - self.frame.size.width
      self.left = newValue - self.width
    }
  }

  //⭐️⭐️
  public var top: CGFloat {
    get {
      return self.frame.origin.y
    }
    set {
      self.frame.origin.y = newValue
    }
  }
  
  //⭐️⭐️
  public var bottom: CGFloat {
    get {
      //return self.frame.origin.y + self.frame.size.height
      return self.top + self.height
    }
    set {
      //self.frame.origin.y = newValue - self.frame.size.height
      self.top = newValue - self.height
    }
  }
}
