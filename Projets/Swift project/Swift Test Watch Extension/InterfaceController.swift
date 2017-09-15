//
//  InterfaceController.swift
//  Swift Test Watch Extension
//
//  Created by Ludovic Ollagnier on 15/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var myLabel: WKInterfaceLabel!
    @IBOutlet var mapView: WKInterfaceMap!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        myLabel.setText("Youhou")
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        if segueIdentifier == "details" {
            return "Hello You !"
        }
        return nil
    }

}
