//
//  ViewController.swift
//  Graph
//
//  Created by 深石祐太朗 on 2016/11/18.
//  Copyright © 2016年 HikikomoriMaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 画面表示後処理
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // グラフを作成
        let graph = Graph()
        
        // グラフにノードを追加
        let nodeA = graph.addNode(label: "a")
        let nodeB = graph.addNode(label: "b")
        let nodeC = graph.addNode(label: "c")
        let nodeD = graph.addNode(label: "d")
        let nodeE = graph.addNode(label: "e")
        let nodeF = graph.addNode(label: "f")
        let nodeG = graph.addNode(label: "g")
        let nodeH = graph.addNode(label: "h")
        
        // 枝を追加
        graph.addEdge(source: nodeA, neighbor: nodeB)
        graph.addEdge(source: nodeA, neighbor: nodeC)
        graph.addEdge(source: nodeB, neighbor: nodeD)
        graph.addEdge(source: nodeB, neighbor: nodeE)
        graph.addEdge(source: nodeC, neighbor: nodeF)
        graph.addEdge(source: nodeC, neighbor: nodeG)
        graph.addEdge(source: nodeE, neighbor: nodeH)
        graph.addEdge(source: nodeE, neighbor: nodeF)
        graph.addEdge(source: nodeF, neighbor: nodeG)
        
        // 探索済ノード
        let nodesExplored = depthFirstSearch(graph, source: nodeA)
        print(nodesExplored)
        
    }

    // メモリ警告
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

