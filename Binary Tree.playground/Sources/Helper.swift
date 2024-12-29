
public class BNode<T> {
    public var value:T
    public var left: BNode<T>?
    public var right: BNode<T>?
    
    public init(_ value : T, _ left : BNode<T>? = nil, _ right: BNode<T>? = nil) {
        self.value = value
        self.left = left
        self.right = right
    }
}

public func example(of description: String, action: () -> Void) {
  print("---Example of \(description)---")
  action()
  print()
}
