//
//  Item.swift
//  Sourcery
//
//  Created by Stefan Herold on 23.07.17.
//  Copyright © 2017 CodingCobra. All rights reserved.
//

import Foundation

public typealias CellAction = () -> Void

public protocol Item {

    var reuseIdentifier: String {get}
    var cellClass: AnyClass {get}
    var action: CellAction? {get}
}

public extension Item {

    public var reuseIdentifier: String {
        return "\(Self.self)"
    }
}
