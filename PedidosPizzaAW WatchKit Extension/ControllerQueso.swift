//
//  ControllerQueso.swift
//  PedidosPizzaAW
//
//  Created by Luis Venegas on 3/18/17.
//  Copyright © 2017 Luis Venegas. All rights reserved.
//

import WatchKit
import Foundation


class ControllerQueso: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    @IBAction func quesoMozzarella() {
        let seleccionMozzarella=objetoConfirmacionTres(q: "Mozzarella")
        pushController(withName: "ingredientes", context: seleccionMozzarella)
    }

    @IBAction func quesoCheddar() {
        let seleccionCheddar=objetoConfirmacionTres(q: "Cheddar")
        pushController(withName: "ingredientes", context: seleccionCheddar)
    }
    
    @IBAction func quesoParmesano() {
        let seleccionParmesano=objetoConfirmacionTres(q: "Parmesano")
        pushController(withName: "ingredientes", context: seleccionParmesano)
    }
    
    @IBAction func sinQueso() {
        let seleccionSinQueso=objetoConfirmacionTres(q: "Sin Queso")
        pushController(withName: "confirmacion", context: seleccionSinQueso)
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
