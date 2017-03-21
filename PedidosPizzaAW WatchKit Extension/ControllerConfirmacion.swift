//
//  ControllerConfirmacion.swift
//  PedidosPizzaAW
//
//  Created by Luis Venegas on 3/16/17.
//  Copyright © 2017 Luis Venegas. All rights reserved.
//

import WatchKit
import Foundation


class ControllerConfirmacion: WKInterfaceController {

    @IBOutlet var etiquetaSize: WKInterfaceLabel!
    @IBOutlet var etiquetaMasa: WKInterfaceLabel!
    @IBOutlet var etiquetaQueso: WKInterfaceLabel!
    @IBOutlet var etiquetaIngredientes: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        let resultadoAnterior = context as! objetoConfirmacion
        self.etiquetaSize.setText(resultadoAnterior.size)
        self.etiquetaMasa.setText(resultadoAnterior.masa)
        self.etiquetaQueso.setText(resultadoAnterior.queso)
        
        var entregarIngredientes = ""

        for i in resultadoAnterior.ingredientes {
        entregarIngredientes = "-\(entregarIngredientes) \n-\(i)"
        }
        
        self.etiquetaIngredientes.setText(entregarIngredientes)

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
