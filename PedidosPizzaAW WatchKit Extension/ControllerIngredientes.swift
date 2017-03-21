//
//  ControllerIngredientes.swift
//  PedidosPizzaAW
//
//  Created by Luis Venegas on 3/18/17.
//  Copyright © 2017 Luis Venegas. All rights reserved.
//

import WatchKit
import Foundation


class ControllerIngredientes: WKInterfaceController {

    var resultadoAnterior : objetoConfirmacion!
    var listaDeIngredientes:[String] = []
    
    @IBOutlet var finalizarPedido: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        resultadoAnterior = context as! objetoConfirmacion
    
        /*resultado = context as? [String]
        if let contenidoAnterior = resultado {
            print("seleccion: ")
            for index in contenidoAnterior {
            print(index)
            }
        }*/
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func seleccionarJamon(_ value: Bool) {
        listaDeIngredientes.append("Jamon")
        
        
        
        /*if(value) {
            ingredientes.append("Jamon")
            resultado!.append("Jamon")
        } else {
            ingredientes = ingredientes.filter(){ $0 != "Jamon"}
            resultado! = resultado!.filter(){ $0 != "Jamon"}
        }*/
    }
    @IBAction func seleccionarPepperoni(_ value: Bool) {
        listaDeIngredientes.append("Pepperoni")
    }
    @IBAction func seleccionarCarne(_ value: Bool) {
        listaDeIngredientes.append("Carne")
    }
    @IBAction func seleccionarTomate(_ value: Bool) {
        listaDeIngredientes.append("Tomate")
    }
    @IBAction func seleccionarAceitunas(_ value: Bool) {
        listaDeIngredientes.append("Aceitunas")
    }
    @IBAction func seleccionarRucula(_ value: Bool) {
        listaDeIngredientes.append("Rucula")
    }
    @IBAction func seleccionarCebolla(_ value: Bool) {
        listaDeIngredientes.append("Cebolla")
    }
    @IBAction func seleccionarPimiento(_ value: Bool) {
        listaDeIngredientes.append("Pimiento")
    }
    @IBAction func accionFinalizarPedido() {
        
        pushController(withName: "confirmacion", context: objetoConfirmacion(s: self.resultadoAnterior.size, m: self.resultadoAnterior.masa , q: self.resultadoAnterior.queso , listaIng:["\(listaDeIngredientes)"]))
        
        /*pushController(withName: "confirmacion", context: resultado)
        
        let seleccionIngredientes=objetoConfirmacionCuatro(i: "\(resultado)")
        pushController(withName: "confirmacion", context: seleccionIngredientes)
*/
    }
}
