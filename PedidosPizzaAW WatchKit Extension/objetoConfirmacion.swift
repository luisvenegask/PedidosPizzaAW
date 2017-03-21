//
//  objetoConfirmacion.swift
//  PedidosPizzaAW
//
//  Created by Luis Venegas on 3/16/17.
//  Copyright © 2017 Luis Venegas. All rights reserved.
//

import WatchKit

class objetoConfirmacion: NSObject {

    var size:String=""
    var masa:String=""
    var queso:String=""
    var ingredientes:[String]=[]
    
    override init() {
    }
    
    init (s:String, m:String, q:String, listaIng:[String]) {
        size=s
        masa=m
        queso=q
        ingredientes=listaIng
    }
}
