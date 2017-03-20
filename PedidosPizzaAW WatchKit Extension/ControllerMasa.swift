//
//  ControllerMasa.swift
//  PedidosPizzaAW
//
//  Created by Luis Venegas on 3/16/17.
//  Copyright © 2017 Luis Venegas. All rights reserved.
//

import WatchKit
import Foundation


class ControllerMasa: WKInterfaceController {
   
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    @IBAction func masaDelgada() {
        let seleccionDelgada=objetoConfirmacionDos(m: "Delgada")
        pushController(withName: "queso", context: seleccionDelgada)
    }
    
    @IBAction func masaCrujiente() {
        let seleccionCrujiente=objetoConfirmacionDos(m: "Crujiente")
        pushController(withName: "queso", context: seleccionCrujiente)
    }

    @IBAction func masaGruesa() {
        let seleccionGruesa=objetoConfirmacionDos(m: "Gruesa")
        pushController(withName: "queso", context: seleccionGruesa)
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
