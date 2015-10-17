//
//  Duck.swift
//  DuckSimulator
//
//  Created by Homma Takushi on 2015/10/17.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

/// マガモ
class MallardDuck: Quackable {
  /// 鴨を監視する機能
  var observable: Observable! = nil
  
  /**
  イニシャライザ
  
  - returns: マガモ
  */
  init() {
    self.observable = Observable(duck: self)
  }
  
  /**
  鳴きます
  */
  func quack() {
    print("ガーガー")
    self.notifyObserver()
  }
  
  /**
  鴨を登録します
  
  - parameter observer: マガモ
  */
  func registerOfObserver(observer: Observer) {
    self.observable.registerOfObserver(observer)
  }
  
  /**
  鴨に通知します
  */
  func notifyObserver() {
    self.observable.notifyObserver()
  }
}

/// ホシハジロ
class RedheadDuck: Quackable {
  /// 鴨を監視する機能
  var observable: Observable! = nil
  
  /**
  イニシャライザ
  
  - returns: ホシハジロ
  */
  init() {
    self.observable = Observable(duck: self)
  }
  
  func quack() {
    print("ガーガー")
    self.notifyObserver()
  }
  
  /**
  鴨を登録します
  
  - parameter observer: マガモ
  */
  func registerOfObserver(observer: Observer) {
    self.observable.registerOfObserver(observer)
  }
  
  /**
  鴨に通知します
  */
  func notifyObserver() {
    self.observable.notifyObserver()
  }
}

/// 鴨笛
class DuckCall: Quackable {
  /// 鴨を監視する機能
  var observable: Observable! = nil
  
  /**
  イニシャライザ
  
  - returns: 鴨笛
  */
  init() {
    self.observable = Observable(duck: self)
  }
  
  /**
  吹きます
  */
  func quack() {
    print("ガアガア")
    self.notifyObserver()
  }
  
  /**
  鴨を登録します
  
  - parameter observer: マガモ
  */
  func registerOfObserver(observer: Observer) {
    self.observable.registerOfObserver(observer)
  }
  
  /**
  鴨に通知します
  */
  func notifyObserver() {
    self.observable.notifyObserver()
  }
}

/// アヒル隊長
class RubberDuck: Quackable {
  /// 鴨を監視する機能
  var observable: Observable! = nil
  
  /**
  イニシャライザ
  
  - returns: アヒル隊長
  */
  init() {
    self.observable = Observable(duck: self)
  }
  
  /**
  鳴きます
  */
  func quack() {
    print("キューキュー")
    self.notifyObserver()
  }
  
  /**
  鴨を登録します
  
  - parameter observer: マガモ
  */
  func registerOfObserver(observer: Observer) {
    self.observable.registerOfObserver(observer)
  }
  
  /**
  鴨に通知します
  */
  func notifyObserver() {
    self.observable.notifyObserver()
  }
}