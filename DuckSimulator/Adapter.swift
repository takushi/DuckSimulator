//
//  GooseAdapter.swift
//  DuckSimulator
//
//  Created by Homma Takushi on 2015/10/17.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

/// ガチョウアダプタ
class GooseAdapter: Quackable {
  /// ガチョウ
  let goose: Goose
  
  /// 鴨を監視する機能
  var observable: Observable! = nil
  
  /**
  イニシャライザ
  
  - parameter goose: ガチョウ
  
  - returns: ガチョウアダプタ
  */
  init(goose: Goose) {
    self.goose = goose
    self.observable = Observable(duck: self)
  }
  
  /**
  鳴きます
  */
  func quack() {
    goose.honk()
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