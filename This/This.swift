//
//  This.swift
//  This
//
//  Created by Christopher Brandon Karani on 07/12/2017.
//  Copyright © 2017 Christopher Brandon Karani. All rights reserved.
//

import Foundation

///Conform to this protocol if you want to use This initialization
public protocol This {}

extension This {
    /// set values to the object right after it is initialized.
    public func this(_ object:  (Self) throws -> Void) rethrows -> Self {
        try object(self)
        return self
    }
}

extension NSObject: This {}


