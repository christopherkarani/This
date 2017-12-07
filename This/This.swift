//
//  This.swift
//  This
//
//  Created by Christopher Brandon Karani on 07/12/2017.
//  Copyright © 2017 Christopher Brandon Karani. All rights reserved.
//

import Foundation

///Conform to this protocol if you want to use This intitilization
public protocol This {}

extension This where Self: NSObject {
    // capture self in a closure and allow user to create object with minimalistic initialization
    public func this(_ object:  (Self) throws -> Void) rethrows -> Self {
        try object(self)
        return self
    }
}

extension NSObject: This {}


