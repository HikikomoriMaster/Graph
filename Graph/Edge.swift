//
//  Edge.swift
//  Graph
//
//  Created by 深石祐太朗 on 2016/11/19.
//  Copyright © 2016年 HikikomoriMaster. All rights reserved.
//

import Foundation

// 枝
public class Edge: Equatable {
    
    public var neighbor: Node       // 隣接ノード
    
    // イニシャライザ
    public init(neighbor: Node) {
        self.neighbor = neighbor
    }
}

// "Equatable"は２つのオブジェクトを比較するためのプロトコル
// lhs:LeftHandSide  rhs:RightHandSide
public func == (lhs: Edge, rhs: Edge) -> Bool {
    return lhs.neighbor == rhs.neighbor
}
