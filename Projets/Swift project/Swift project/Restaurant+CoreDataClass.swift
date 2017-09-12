//
//  Restaurant+CoreDataClass.swift
//  Swift project
//
//  Created by Ludovic Ollagnier on 12/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Restaurant)
public class Restaurant: NSManagedObject {

    @nonobjc public class func fRequ() -> NSFetchRequest<Restaurant> {
        return NSFetchRequest<Restaurant>(entityName: "Restaurant")
    }

}
