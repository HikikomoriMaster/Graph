// 深さ優先探索
func depthFirstSearch(_ graph: Graph, source: Node) -> [String] {
    
    // 探索したノードを格納する配列
    var nodesExplored = [source.label]
    
    // 探索済ノードのフラグを更新
    source.visited = true
    
    // 呼び出し元の隣接ノードについて、存在する枝を調べる
    for edge in source.neighbors {
        
        // 隣接ノードが探索済でなかった場合、再帰で隣接ノードを探索する
        if !edge.neighbor.visited {
            nodesExplored += depthFirstSearch(graph, source: edge.neighbor)
        }
    
    }

    // 探索したノード配列を返す
    return nodesExplored

}
