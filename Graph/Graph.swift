//
//  Graph.swift
//  Graph
//
//  Created by 深石祐太朗 on 2016/11/19.
//  Copyright © 2016年 HikikomoriMaster. All rights reserved.
//

import Foundation

// グラフ
public class Graph: Equatable {
    
    // getterがpublicでsetterがprivateな変数
    public private(set) var nodes: [Node]
    
    // イニシャライザ
    public init() {
        self.nodes = []
    }
    
    // ノードの追加
    public func addNode(label: String) -> Node {
        
        // 新しいノード
        let node = Node(label: label)
        nodes.append(node)
        
        return node
    }
    
    // 枝の追加
    public func addEdge(source: Node, neighbor: Node) {
        
        // 新しい枝
        let edge = Edge(neighbor: neighbor)
        source.neighbors.append(edge)
    }
    
}

// "Equatable"は２つのオブジェクトを比較するためのプロトコル
// lhs:LeftHandSide  rhs:RightHandSide
public func == (lhs: Graph, rhs: Graph) -> Bool {
    return lhs.nodes == rhs.nodes
}
