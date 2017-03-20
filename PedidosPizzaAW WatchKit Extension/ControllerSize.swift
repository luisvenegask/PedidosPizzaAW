//
//  ControllerSize.swift
//  PedidosPizzaAW
//
//  Created by Luis Venegas on 3/16/17.
//  Copyright © 2017 Luis Venegas. All rights reserved.
//

import WatchKit
import Foundation


class ControllerSize: WKInterfaceController {

    let resultado:[String] = []
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    @IBAction func sizeChica() {
        let seleccionChica = objetoConfirmacion(s: "Chica")
        pushController(withName: "masa", context: seleccionChica)
    }
    
    @IBAction func sizeMediana() {
        let seleccionMediana = objetoConfirmacion(s: "Mediana")
        pushController(withName: "masa", context: seleccionMediana)
    }
    
    @IBAction func sizeGrande() {
        let seleccionGrande = objetoConfirmacion(s: "Grande")
        pushController(withName: "masa", context: seleccionGrande)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
