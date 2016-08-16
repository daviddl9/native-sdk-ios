//
//  PBForm.swift
//  Playbook
//
//  Created by Médéric Petit on 6/15/2559 BE.
//  Copyright © 2559 smartsoftasia. All rights reserved.
//

import UIKit

protocol Validatable {
    func validate()
    func isValid() -> Bool
}

protocol Parametrable {
    func params() -> [String:String]
}


class PBForm:NSObject, Validatable, Parametrable {
    
    var validationError:PBError?

    func validate() {
        // Default implementation does nothing
        // Override in subclass
    }
    
    func isValid() -> Bool {
        self.validate()
        return self.validationError == nil
    }
    
    func params() -> [String:String] {
        // Default implementation does nothing
        // Override in subclass
        return [:]
    }
}