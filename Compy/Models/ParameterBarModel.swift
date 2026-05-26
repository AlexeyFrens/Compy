
//  ParameterBar.swift
//  Compy
//
//  Created by Andre on 25/05/26.
//
import Foundation
import Observation

@Observable
class ParameterBarModel: Identifiable {
    var pieceName: String
    var dropDown: [SpecificationModel]
    var about: String
    
    init(pieceName: String, dropDown: [SpecificationModel], about: String) {
        self.pieceName = pieceName
        self.dropDown = dropDown
        self.about = about
    }
}
