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
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        let c = context as! objetoConfirmacion
        etiquetaSize.setText(String(c.size))
        
        let d = context as! objetoConfirmacionDos
        etiquetaMasa.setText(String(d.masa))
        
        let e = context as! objetoConfirmacionTres
        etiquetaQueso.setText(String(e.queso))

        let f = context as! objetoConfirmacionCuatro
        etiquetaIngredientes.setText(String(f.ingredientes))
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
