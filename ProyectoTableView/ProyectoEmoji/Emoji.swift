//
//  Emoji.swift
//  ProyectoEmoji
//
//  Created by Jorge on 08/11/23.
//

import Foundation



class Emoji{
    
    
    var simbolo: String
    var nombre: String
    var descripcion: String
    var uso: String
    var categoria: String
    var fechaCreacion: String
    
    init(simbolo: String, nombre: String, descripcion: String, uso: String, categoria: String, fechaCreacion: String) {
        self.simbolo = simbolo
        self.nombre = nombre
        self.descripcion = descripcion
        self.uso = uso
        self.categoria = categoria
        self.fechaCreacion = fechaCreacion
    }
}
