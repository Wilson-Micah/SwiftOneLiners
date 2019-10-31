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

// Breadth First Traversal
func traverseTree(root: TreeMember) -> [Leaf] {
    { (args: (result: UnsafeMutablePointer<[Leaf]>, toSearch: UnsafeMutablePointer<[TreeMember]>)) in { (result: [Leaf], _, _, _) in result }(args.result.move(), args.result.deallocate(), args.toSearch.deinitialize(count: 1), args.toSearch.deallocate()) }({ (result: UnsafeMutablePointer<[Leaf]>, toSearch: UnsafeMutablePointer<[TreeMember]>) in { _ in (result, toSearch) }({ while !toSearch.pointee.isEmpty { { first in if let leaf = first as? Leaf { result.pointee.append(leaf) } else if let node = first as? Node { toSearch.pointee.append(contentsOf: node.children) } }(toSearch.pointee.removeFirst()) } }()) }({ () -> UnsafeMutablePointer<[Leaf]> in { pointer in { _ in pointer }(pointer.initialize(to: [])) }(UnsafeMutablePointer<[Leaf]>.allocate(capacity: 1)) }(), { () -> UnsafeMutablePointer<[TreeMember]> in { pointer in { _ in pointer }(pointer.initialize(to: [root])) }(UnsafeMutablePointer<[TreeMember]>.allocate(capacity: 1)) }()))
}

let parent = Node.init(children: [
    Node(children: [
        Leaf(id: "0"),
        Leaf(id: "1")
    ]),
    Leaf(id: "2"),
    Node(children: [
        Node(children: [
            Leaf(id: "3")
        ])
    ])
])
print(traverseTree(root: parent).map { $0.id }) // ["2", "0", "1", "3"]
