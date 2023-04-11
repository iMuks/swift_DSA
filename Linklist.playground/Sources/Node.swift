import Foundation

public class Node {
  
  public var value: Int
  public var next: Node?
  
  public init(_ value : Int, _ next : Node? = nil) {
    self.value = value
    self.next = next
  }
}

