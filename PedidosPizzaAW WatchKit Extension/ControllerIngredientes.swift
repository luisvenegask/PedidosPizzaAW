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

    var resultado:[String]?
    var ingredientes:[String] = []
    
    @IBOutlet var finalizarPedido: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    
        resultado = context as? [String]
        if let contenidoAnterior = resultado {
            print("seleccion: ")
            for index in contenidoAnterior {
            print(index)
            }
        }
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
        if(value) {
            ingredientes.append("Jamon")
            resultado!.append("Jamon")
        } else {
            ingredientes = ingredientes.filter(){ $0 != "Jamon"}
            resultado! = resultado!.filter(){ $0 != "Jamon"}
        }
    }
    @IBAction func seleccionarPepperoni(_ value: Bool) {
        if(value) {
            ingredientes.append("Pepperoni")
            resultado!.append("Pepperoni")
        } else {
            ingredientes = ingredientes.filter(){ $0 != "Pepperoni"}
            resultado! = resultado!.filter(){ $0 != "Pepperoni"}
        }
    }
    @IBAction func seleccionarCarne(_ value: Bool) {
        if(value) {
            ingredientes.append("Carne")
            resultado!.append("Carne")
        } else {
            ingredientes = ingredientes.filter(){ $0 != "Carne"}
            resultado! = resultado!.filter(){ $0 != "Carne"}
        }
    }
    @IBAction func seleccionarTomate(_ value: Bool) {
        if(value) {
            ingredientes.append("Tomate")
            resultado!.append("Tomate")
        } else {
            ingredientes = ingredientes.filter(){ $0 != "Tomate"}
            resultado! = resultado!.filter(){ $0 != "Tomate"}
        }
    }
    @IBAction func seleccionarAceitunas(_ value: Bool) {
        if(value) {
            ingredientes.append("Aceitunas")
            resultado!.append("Aceitunas")
        } else {
            ingredientes = ingredientes.filter(){ $0 != "Aceitunas"}
            resultado! = resultado!.filter(){ $0 != "Aceitunas"}
        }
    }
    @IBAction func seleccionarRucula(_ value: Bool) {
        if(value) {
            ingredientes.append("Rucula")
            resultado!.append("Rucula")
        } else {
            ingredientes = ingredientes.filter(){ $0 != "Rucula"}
            resultado! = resultado!.filter(){ $0 != "Rucula"}
        }
    }
    @IBAction func seleccionarCebolla(_ value: Bool) {
        if(value) {
            ingredientes.append("Cebolla")
            resultado!.append("Cebolla")
        } else {
            ingredientes = ingredientes.filter(){ $0 != "Cebolla"}
            resultado! = resultado!.filter(){ $0 != "Cebolla"}
        }
    }
    @IBAction func seleccionarPimiento(_ value: Bool) {
        if(value) {
            ingredientes.append("Pimiento")
            resultado!.append("Pimiento")
        } else {
            ingredientes = ingredientes.filter(){ $0 != "Pimiento"}
            resultado! = resultado!.filter(){ $0 != "Pimiento"}
        }
    }
    @IBAction func accionFinalizarPedido() {
        pushController(withName: "confirmacion", context: resultado)
        
        let seleccionIngredientes=objetoConfirmacionCuatro(i: "\(resultado)")
        pushController(withName: "confirmacion", context: seleccionIngredientes)

    }
}
