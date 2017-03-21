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
    
    @IBOutlet var botonChica: WKInterfaceButton!
    @IBOutlet var botonMediana: WKInterfaceButton!
    @IBOutlet var botonGrande: WKInterfaceButton!
    
    var resultado = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    @IBAction func sizeChica() {
        self.resultado = "Chica"
        self.entregarResultado(resultado: self.resultado)
    }
    
    @IBAction func sizeMediana() {
        self.resultado = "Mediana"
        self.entregarResultado(resultado: self.resultado)
    }
    
    @IBAction func sizeGrande() {
        self.resultado = "Grande"
        self.entregarResultado(resultado: self.resultado)
    }
    
    func entregarResultado (resultado:String) {
        pushController(withName: "masa", context: objetoConfirmacion(s: "\(resultado)", m:"", q:"", listaIng:[]))
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
