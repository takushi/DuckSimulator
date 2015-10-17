//
//  Quackable.swift
//  DuckSimulator
//
//  Created by Homma Takushi on 2015/10/17.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

/**
*  鳴く振る舞い
*/
protocol Quackable: QuackObservable {
  /**
  鳴きます
  */
  func quack()
}