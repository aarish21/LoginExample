//
//  File.swift
//  Swift Collection
//
//  Created by Aarish on 17/08/22.
//

import Foundation
open class AccessControl {// anyone can subclass and anyone can use it
    private var id: String      // cannot be accessed outside
    public var name: String     // can be accessed outside
    fileprivate var title: String
    init(id: String, name: String, title: String) {
        self.id = id
        self.name = name
        self.title = title
    }
    func showId() {
        print(id)
    }
}

func title() {
    let test = AccessControl(id: "", name: "", title: "")
    test.title = "hello"                    // can access fileprivate type title within this swift file
}

final class AccessB: AccessControl { // anyone can use final but no one can subclass it
}

internal class AccessC {        // default in swift is internal, anyone inside the module
                            //  can subclass internal but not outside
}

class AccessD: AccessC {        // subclassed internal
}
