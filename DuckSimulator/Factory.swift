//
//  Factory.swift
//  DuckSimulator
//
//  Created by Homma Takushi on 2015/10/17.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

// MARK: 鴨
/// 鴨を生産するファクトリ
class AbstractDuckFactory {
  init() {
    if (self.dynamicType === AbstractDuckFactory.self) {
      fatalError("Abstract Class")
    }
  }
  
  /**
  マガモを生産します
  */
  func createMallardDuck() -> Quackable {
    fatalError("Abstrack Method")
  }
  
  /**
  ホシハジロを生産します
  */
  func createRedheadDuck() -> Quackable {
    fatalError("Abstract Method")
  }
  
  /**
  鴨笛を生産します
  */
  func createDuckCall() -> Quackable {
    fatalError("Abstract Method")
  }
  
  /**
  アヒル隊長を生産します
  */
  func createRubberDuck() -> Quackable {
    fatalError("Abstract Method")
  }
}

/// 鴨を生産するファクトリ
class DuckFactory: AbstractDuckFactory {
  /**
  マガモを生産します
  
  - returns: マガモ
  */
  override func createMallardDuck() -> Quackable {
    return MallardDuck()
  }
  
  /**
  ホシハジロを生産します
  
  - returns: ホシハジロ
  */
  override func createRedheadDuck() -> Quackable {
    return RedheadDuck()
  }
  
  /**
  鴨笛を生産します
  
  - returns: 鴨笛
  */
  override func createDuckCall() -> Quackable {
    return DuckCall()
  }
  
  /**
  アヒル隊長を生産します
  
  - returns: アヒル隊長
  */
  override func createRubberDuck() -> Quackable {
    return RubberDuck()
  }
}

/// 鳴き声を数える鴨を生産するファクトリ
class CountingDuckFactory: AbstractDuckFactory {
  /**
  マガモを生産します
  
  - returns: マガモ
  */
  override func createMallardDuck() -> Quackable {
    return QuackCounter(duck: MallardDuck())
  }
  
  /**
  ホシハジロを生産します
  
  - returns: ホシハジロ
  */
  override func createRedheadDuck() -> Quackable {
    return QuackCounter(duck: RedheadDuck())
  }
  
  /**
  鴨笛を生産します
  
  - returns: 鴨笛
  */
  override func createDuckCall() -> Quackable {
    return QuackCounter(duck: DuckCall())
  }
  
  /**
  アヒル隊長を生産します
  
  - returns: アヒル隊長
  */
  override func createRubberDuck() -> Quackable {
    return QuackCounter(duck: RubberDuck())
  }
}

// MARK: ガチョウ
/// ガチョウを生産するファクトリ
class AbstractGooseFactory {
  init() {
    if (self.dynamicType === AbstractGooseFactory.self) {
      fatalError("Abstract Class")
    }
  }
  
  /**
  ガチョウを生産します
  */
  func createGooseDuck() -> Quackable {
    fatalError("Abstrack Method")
  }
}

/// ガチョウを生産するファクトリ
class GooseFactory: AbstractGooseFactory {
  override func createGooseDuck() -> Quackable {
    return GooseAdapter(goose: Goose())
  }
}

/// 鳴き声を数えるガチョウを生産するファクトリ
class CountingGooseFactory: AbstractGooseFactory {
  override func createGooseDuck() -> Quackable {
    return QuackCounter(duck: GooseAdapter(goose: Goose()))
  }
}