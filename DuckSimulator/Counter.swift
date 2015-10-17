//
//  Counter.swift
//  DuckSimulator
//
//  Created by Homma Takushi on 2015/10/17.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

/// 鴨の鳴き声集計デコレータ
class QuackCounter: Quackable {
  /// 鳥
  let duck: Quackable
  private struct Quacks {
    static var number: Int = 0
  }
  /// 鳴き声の数
  private(set) class var numberOfQuacks: Int {
    get {
      return Quacks.number
    }
    set {
      Quacks.number = newValue
    }
  }
  
  /**
  イニシャライザ
  
  - parameter duck: アヒル
  
  - returns: 鳴き声の数
  */
  init(duck: Quackable) {
    self.duck = duck
  }
  
  /**
  鳴きます
  */
  func quack() {
    self.duck.quack()
    QuackCounter.numberOfQuacks++
  }

  /**
  鴨を登録します
  
  - parameter observer: マガモ
  */
  func registerOfObserver(observer: Observer) {
    self.duck.registerOfObserver(observer)
  }
  
  /**
  鴨に通知します
  */
  func notifyObserver() {
    self.duck.notifyObserver()
  }
}