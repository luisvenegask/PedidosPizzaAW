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

    var resultado = ""
    var resultadoAnterior : objetoConfirmacion!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        resultadoAnterior = context as! objetoConfirmacion

    }
    @IBAction func quesoMozzarella() {
        self.resultado = "Mozzarella"
        self.entregarResultado(resultado: self.resultado)
    }

    @IBAction func quesoCheddar() {
        self.resultado = "Cheddar"
        self.entregarResultado(resultado: self.resultado)
    }
    
    @IBAction func quesoParmesano() {
        self.resultado = "Parmesano"
        self.entregarResultado(resultado: self.resultado)
    }
    
    @IBAction func sinQueso() {
        self.resultado = "Sin Queso"
        self.entregarResultado(resultado: self.resultado)
    }
    
    func entregarResultado (resultado:String) {
        pushController(withName: "ingredientes", context: objetoConfirmacion(s: self.resultadoAnterior.size, m: self.resultadoAnterior.masa , q: "\(resultado)", listaIng:[]))
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
