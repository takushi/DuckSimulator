//
//  Observable.swift
//  DuckSimulator
//
//  Created by Homma Takushi on 2015/10/17.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

/**
*  オブザーバ
*/
protocol Observer {
  /**
  通知します
  
  - parameter duck: 鴨
  */
  func update(duck: QuackObservable)
}

/// 鴨の鳴き声学者
class Quackologist: Observer {
  /**
  鳴き声をあげた鴨の数を出力します
  
  - parameter duck: 鴨
  */
  func update(duck: QuackObservable) {
    print("鴨の鳴き声学者：\(duck)が鳴きました")
  }
}

/**
*  鴨のオブザーバ
*/
protocol QuackObservable {
  /**
  オブザーバを登録します
  
  - parameter observer: オブザーバ
  */
  func registerOfObserver(observer: Observer)
  
  /**
  オブザーバに通知します
  */
  func notifyObserver()
}

/// 鴨の監視に必要な機能
class Observable: QuackObservable {
  /// オブザーバ
  var observers: [Observer]
  /// 鴨
  let duck: QuackObservable
  
  /**
  イニシャライザ
  
  - returns: 鴨の監視に必要な機能
  */
  init(duck: QuackObservable) {
    self.observers = []
    self.duck = duck
  }
  
  /**
  鴨を登録します
  
  - parameter observer: 鴨
  */
  func registerOfObserver(observer: Observer) {
    self.observers.append(observer)
  }
  
  /**
  鴨に通知します
  */
  func notifyObserver() {
    for duck: Observer in self.observers {
      duck.update(self.duck)
    }
  }
}