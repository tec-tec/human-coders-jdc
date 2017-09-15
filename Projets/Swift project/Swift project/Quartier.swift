//
//  Quartier.swift
//  Swift project
//
//  Created by Ludovic Ollagnier on 15/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

import Foundation

@objc enum Agreabilité: Int {
    case horrible, bof, pasMal, genial
}

@objcMembers class Quartier: NSObject {

    var name: String
    var sympa: Agreabilité

    init(name: String, sympa: Agreabilité) {
        self.name = name
        self.sympa = sympa
    }
}
