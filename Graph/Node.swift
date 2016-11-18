//
//  Node.swift
//  Graph
//
//  Created by 深石祐太朗 on 2016/11/19.
//  Copyright © 2016年 HikikomoriMaster. All rights reserved.
//

import Foundation

// ノード
public class Node: Equatable {
   
    public var neighbors: [Edge]            // ノードに接続されている枝
    public private(set) var label: String   // ノードのラベリング
    public var visited: Bool                // 探索済フラグ

    // イニシャライザ
    public init(label: String) {
        neighbors  = []
        self.label = label
        visited    = false
    }
    
    //// ノードに接続されている枝の削除
    //// "neighbors.index { $0 === edge }!" で削除対象の枝のインデックスを得る
    //public func remove(edge: Edge) {
    //    neighbors.remove(at: neighbors.index { $0 === edge }!)
    //}
}

// "Equatable"は２つのオブジェクトを比較するためのプロトコル
// lhs:LeftHandSide  rhs:RightHandSide
public func == (lhs: Node, rhs: Node) -> Bool {
    return lhs.label == rhs.label && lhs.neighbors == rhs.neighbors
}
