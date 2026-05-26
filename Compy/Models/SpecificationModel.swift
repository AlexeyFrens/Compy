//
//  SpecificationModel.swift
//  Compy
//
//  Created by Andre on 25/05/26.
//

import Foundation
import Observation

@Observable
class SpecificationModel : Identifiable{
    var name: String
    var quantity: Double
    var un : String
    
    init(name: String, quantity: Double, un: String) {
        self.name = name
        self.quantity = quantity
        self.un = un
    }
}
