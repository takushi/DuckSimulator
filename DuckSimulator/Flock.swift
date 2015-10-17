//
//  Flock.swift
//  DuckSimulator
//
//  Created by Homma Takushi on 2015/10/17.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

/// 鴨の群れ
class Flock: Quackable {
  /// 鴨
  var quackers: [Quackable]
  
  /**
  イニシャライザ
  
  - returns: 鴨の群れ
  */
  init () {
    self.quackers = []
  }
  
  /**
  鴨を追加します
  
  - parameter quacker: 鴨
  */
  func add(quacker: Quackable) {
    self.quackers.append(quacker)
  }
  
  /**
  鳴きます
  */
  func quack() {
    for quacker: Quackable in self.quackers {
      quacker.quack()
    }
  }
  
  /**
  鴨を登録します
  
  - parameter observer: マガモ
  */
  func registerOfObserver(observer: Observer) {
    for quacker: Quackable in self.quackers {
      quacker.registerOfObserver(observer)
    }
  }
  
  /**
  鴨に通知します
  */
  func notifyObserver() {
    for quacker: Quackable in self.quackers {
      quacker.notifyObserver()
    }
  }
}