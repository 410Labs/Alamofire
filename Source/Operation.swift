//
//  Operation.swift
//  Alamofire
//
//  Created by Brian King on 2/19/16.
//  Copyright © 2016 Alamofire. All rights reserved.
//

import Foundation

extension Request {

    /**
        Create a new operation in the task delegate's operation queue.
        The operation is exposed to be used as a dependency for other
        operations in the application.
     */
    public func completionOperation() -> NSOperation {
        let operation = NSOperation()
        delegate.queue.addOperation(operation)
        return operation
    }
    
}