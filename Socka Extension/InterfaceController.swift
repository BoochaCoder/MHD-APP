//
//  InterfaceController.swift
//  Socka Extension
//
//  Created by Boocha on 18.11.18.
//  Copyright © 2018 Boocha. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBAction func getDokumenty() {
        getDocumentsDirectory()
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
        
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    func getDocumentsDirectory() -> URL {
        //Vypíše cestu do dokumentu
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentsDirectory = paths[0]
        print("Tohle je cesta dle funkce ve VC:  \(documentsDirectory)")
        return documentsDirectory
    }

}