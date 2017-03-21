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
    
    var resultado = ""
    var resultadoAnterior : objetoConfirmacion!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        resultadoAnterior = context as! objetoConfirmacion
    }

    @IBAction func masaDelgada() {
        self.resultado = "Delgada"
        self.entregarResultado(resultado: self.resultado)
    }
    
    @IBAction func masaCrujiente() {
        self.resultado = "Crujiente"
        self.entregarResultado(resultado: self.resultado)
    }

    @IBAction func masaGruesa() {
        self.resultado = "Gruesa"
        self.entregarResultado(resultado: self.resultado)
    }
    
    func entregarResultado (resultado:String) {
        pushController(withName: "queso", context: objetoConfirmacion(s: self.resultadoAnterior.size, m: "\(resultado)" , q:"", listaIng:[]))
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
