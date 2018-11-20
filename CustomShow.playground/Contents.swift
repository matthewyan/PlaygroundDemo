import UIKit

class MyType {
    var value = 0
}

extension MyType: CustomPlaygroundDisplayConvertible {
    var playgroundDescription: Any {
        return "World \(value)"
    }
}

let t = MyType()
t.value += 1
t

