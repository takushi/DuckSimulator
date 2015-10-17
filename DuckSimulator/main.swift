//
//  main.swift
//  DuckSimulator
//  「Head First デザインパターン 11章 デザインパターン入門: Compoundパターン：パターンのパターン」をSwiftで実装します。
//
//  Created by Homma Takushi on 2015/10/17.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

/**
鴨を動かします

- parameter duck: 鴨
*/
func simulate(duck: Quackable) {
  duck.quack()
}

let duckFactory: AbstractDuckFactory = CountingDuckFactory()
let gooseFactory: AbstractGooseFactory = CountingGooseFactory()

let redheadDuck = duckFactory.createRedheadDuck()
let duckCall = duckFactory.createDuckCall()
let rubberDuck = duckFactory.createRubberDuck()
let gooseDuck = gooseFactory.createGooseDuck()

let flockOfDucks: Flock = Flock()
flockOfDucks.add(redheadDuck)
flockOfDucks.add(duckCall)
flockOfDucks.add(rubberDuck)
flockOfDucks.add(gooseDuck)

let flockOfMallards: Flock = Flock()

let mallardOne = duckFactory.createMallardDuck()
let mallardTwo = duckFactory.createMallardDuck()
let mallardThree = duckFactory.createMallardDuck()
let mallardFour = duckFactory.createMallardDuck()

flockOfMallards.add(mallardOne)
flockOfMallards.add(mallardTwo)
flockOfMallards.add(mallardThree)
flockOfMallards.add(mallardFour)

flockOfDucks.add(flockOfMallards)

print("鴨シミュレータ：オブザーバ付き")
let quackologist = Quackologist()
flockOfDucks.registerOfObserver(quackologist)

simulate(flockOfDucks)

print("鴨が鳴いた回数：\(QuackCounter.numberOfQuacks)回")