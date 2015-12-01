//
//  Valores.swift
//  PizzasApp
//
//  Created by Israel Durán Martínez on 13/11/15.
//  Copyright © 2015 Israel Durán Martínez. All rights reserved.
//

import Foundation

struct ValoresPizza
{
    static var tamaño : Int = 0
    static var masa : Int = 0
    static var queso : Int = 0
    //static var ingrediemtes : Int = 0
    
    static var valoresTamaño = [0: "Chica", 1: "Mediana", 2: "Grande"]
    static var valoresMasa = [0: "Delgada", 1: "Crujiente", 2: "Gruesa"]
    static var valoresQueso = [0: "Mozarela", 1: "Cheddar", 2: "Parmesano", 3: "Sin Queso"]
    static var ingredientesOnOff = [0,0,0,0,0,0,0,0,0,0]
    static var ingredientes = ["Jamón","Pepperoni","Pavo","Salchicha","Aceituna","Cebolla","Pimiento","Piña","Anchoa","Chorizo"]
}
