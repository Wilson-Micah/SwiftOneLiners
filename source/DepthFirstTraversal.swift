// Tree Structure

class TreeMember {
    init() {
        assert(self is Node || self is Leaf)
    }
}

class Node: TreeMember {
    var children: [TreeMember]
    
    init(children: [TreeMember]) {
        self.children = children
        super.init()
    }
}

class Leaf: TreeMember {
    var id: String
    
    init(id: String) {
        self.id = id
        super.init()
    }
}

// Depth First Traversal

func traverseTree(root: TreeMember) -> [Leaf] {
    return root is Leaf ? [root as! Leaf] : (root as! Node).children.lazy.flatMap(traverseTree)
}

let parent = Node.init(children: [Node(children: [Leaf(id: "0"), Leaf(id: "1")]), Leaf(id: "2"), Node(children: [Node(children: [Leaf(id: "3")])])])

print(traverseTree(root: parent).map { $0.id }) // ["0", "1", "2", "3"]
