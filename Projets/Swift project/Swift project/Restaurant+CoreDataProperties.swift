//
//  Restaurant+CoreDataProperties.swift
//  Swift project
//
//  Created by Ludovic Ollagnier on 12/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//
//

import Foundation
import CoreData


extension Restaurant {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Restaurant> {
        return NSFetchRequest<Restaurant>(entityName: "Restaurant")
    }

    @NSManaged public var name: String?

}
